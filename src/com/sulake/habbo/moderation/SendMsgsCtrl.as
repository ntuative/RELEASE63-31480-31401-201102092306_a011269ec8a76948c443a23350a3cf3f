package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_34:ModerationManager;
      
      private var var_1304:int;
      
      private var var_1600:String;
      
      private var var_1305:String;
      
      private var _frame:IFrameWindow;
      
      private var var_1089:IDropMenuWindow;
      
      private var var_468:ITextFieldWindow;
      
      private var _disposed:Boolean;
      
      private var var_642:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         this.var_34 = param1;
         this.var_1304 = param2;
         this.var_1600 = param3;
         this.var_1305 = param4;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function show() : void
      {
         this._frame = IFrameWindow(this.var_34.getXmlWindow("send_msgs"));
         this._frame.caption = "Msg To: " + this.var_1600;
         this._frame.findChildByName("send_message_but").procedure = this.onSendMessageButton;
         this.var_468 = ITextFieldWindow(this._frame.findChildByName("message_input"));
         this.var_468.procedure = this.onInputClick;
         this.var_1089 = IDropMenuWindow(this._frame.findChildByName("msgTemplatesSelect"));
         this.prepareMsgSelect(this.var_1089);
         this.var_1089.procedure = this.onSelectTemplate;
         var _loc1_:IWindow = this._frame.findChildByTag("close");
         _loc1_.procedure = this.onClose;
         this._frame.visible = true;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1610;
      }
      
      public function getId() : String
      {
         return this.var_1600;
      }
      
      public function getFrame() : IFrameWindow
      {
         return this._frame;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + this.var_34.initMsg.messageTemplates.length);
         param1.populate(this.var_34.initMsg.messageTemplates);
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_59)
         {
            return;
         }
         var _loc3_:String = this.var_34.initMsg.messageTemplates[this.var_1089.selection];
         if(_loc3_ != null)
         {
            this.var_642 = false;
            this.var_468.text = _loc3_;
         }
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(this.var_642 || this.var_468.text == "")
         {
            this.var_34.windowManager.alert("Alert","You must input a message to the user",0,this.onAlertClose);
            return;
         }
         this.var_34.connection.send(new ModMessageMessageComposer(this.var_1304,this.var_468.text,this.var_1305));
         this.dispose();
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.dispose();
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_288)
         {
            return;
         }
         if(!this.var_642)
         {
            return;
         }
         this.var_468.text = "";
         this.var_642 = false;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this._frame != null)
         {
            this._frame.destroy();
            this._frame = null;
         }
         this.var_1089 = null;
         this.var_468 = null;
         this.var_34 = null;
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
   }
}
