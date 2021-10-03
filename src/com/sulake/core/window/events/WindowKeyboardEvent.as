package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class WindowKeyboardEvent extends WindowEvent
   {
      
      public static const const_328:String = "WKE_KEY_UP";
      
      public static const const_172:String = "WKE_KEY_DOWN";
      
      public static const const_164:String = "";
       
      
      private var var_668:KeyboardEvent;
      
      public function WindowKeyboardEvent(param1:String, param2:Event, param3:IWindow, param4:IWindow, param5:Boolean = false, param6:Boolean = false)
      {
         _type = param1;
         this.var_668 = KeyboardEvent(param2);
         super(param1,param3,param4,param5,false);
      }
      
      public function get charCode() : uint
      {
         return this.var_668.charCode;
      }
      
      public function get keyCode() : uint
      {
         return this.var_668.keyCode;
      }
      
      public function get keyLocation() : uint
      {
         return this.var_668.keyLocation;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_668.altKey;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_668.shiftKey;
      }
      
      override public function clone() : Event
      {
         return new WindowKeyboardEvent(_type,this.var_668,window,related,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowKeyboardEvent","type","bubbles","cancelable","window","charCode");
      }
   }
}
