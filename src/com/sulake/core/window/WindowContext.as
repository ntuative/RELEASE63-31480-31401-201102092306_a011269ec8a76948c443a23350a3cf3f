package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_485:uint = 0;
      
      public static const const_1464:uint = 1;
      
      public static const const_1800:int = 0;
      
      public static const const_1907:int = 1;
      
      public static const const_1727:int = 2;
      
      public static const const_1803:int = 3;
      
      public static const const_1484:int = 4;
      
      public static const const_358:int = 5;
      
      public static var var_1473:IMouseCursor;
      
      public static var var_371:IEventQueue;
      
      private static var var_608:IEventProcessor;
      
      private static var var_1762:uint = const_485;
      
      private static var stage:Stage;
      
      private static var var_151:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2483:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_184:DisplayObjectContainer;
      
      protected var var_2780:Boolean = true;
      
      protected var var_1220:Error;
      
      protected var var_1977:int = -1;
      
      protected var var_1229:IInternalWindowServices;
      
      protected var var_1481:IWindowParser;
      
      protected var var_2736:IWindowFactory;
      
      protected var var_134:IDesktopWindow;
      
      protected var var_1480:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_530:Boolean = false;
      
      private var var_2482:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_151 = param2;
         this._localization = param4;
         this.var_184 = param5;
         this.var_1229 = new ServiceManager(this,param5);
         this.var_2736 = param3;
         this.var_1481 = new WindowParser(this);
         this.var_2483 = param7;
         if(!stage)
         {
            if(this.var_184 is Stage)
            {
               stage = this.var_184 as Stage;
            }
            else if(this.var_184.stage)
            {
               stage = this.var_184.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_134 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_184.addChild(this.var_134.getDisplayObject());
         this.var_184.doubleClickEnabled = true;
         this.var_184.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_151,this.var_134,this.var_134,null,this.var_2483);
         inputMode = const_485;
         this.var_1480 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1762;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_371)
         {
            if(var_371 is IDisposable)
            {
               IDisposable(var_371).dispose();
            }
         }
         if(var_608)
         {
            if(var_608 is IDisposable)
            {
               IDisposable(var_608).dispose();
            }
         }
         switch(value)
         {
            case const_485:
               var_371 = new MouseEventQueue(stage);
               var_608 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1464:
               var_371 = new TabletEventQueue(stage);
               var_608 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_485;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_184.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_184.removeChild(IGraphicContextHost(this.var_134).getGraphicContext(true) as DisplayObject);
            this.var_134.destroy();
            this.var_134 = null;
            this.var_1480.destroy();
            this.var_1480 = null;
            if(this.var_1229 is IDisposable)
            {
               IDisposable(this.var_1229).dispose();
            }
            this.var_1229 = null;
            this.var_1481.dispose();
            this.var_1481 = null;
            var_151 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1220;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1977;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1220 = param2;
         this.var_1977 = param1;
         if(this.var_2780)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1220 = null;
         this.var_1977 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1229;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1481;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2736;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_134;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1473 == null)
         {
            var_1473 = new MouseCursorControl(this.var_184);
         }
         return var_1473;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_134.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1484,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1480;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_134,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_134)
         {
            this.var_134 = null;
         }
         if(param1.state != WindowState.const_534)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_151.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_530 = true;
         if(this.var_1220)
         {
            throw this.var_1220;
         }
         var_608.process(this._eventProcessorState,var_371);
         this.var_530 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2482 = true;
         var_151.update(param1);
         this.var_2482 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_134 != null && !this.var_134.disposed)
         {
            if(this.var_184 is Stage)
            {
               this.var_134.width = Stage(this.var_184).stageWidth;
               this.var_134.height = Stage(this.var_184).stageHeight;
            }
            else
            {
               this.var_134.width = this.var_184.width;
               this.var_134.height = this.var_184.height;
            }
         }
      }
   }
}
