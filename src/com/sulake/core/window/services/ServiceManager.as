package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2757:uint;
      
      private var var_133:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var _windowContext:IWindowContext;
      
      private var var_1104:IMouseDraggingService;
      
      private var var_1105:IMouseScalingService;
      
      private var var_1102:IMouseListenerService;
      
      private var var_1101:IFocusManagerService;
      
      private var var_1103:IToolTipAgentService;
      
      private var var_1106:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2757 = 0;
         this.var_133 = param2;
         this._windowContext = param1;
         this.var_1104 = new WindowMouseDragger(param2);
         this.var_1105 = new WindowMouseScaler(param2);
         this.var_1102 = new WindowMouseListener(param2);
         this.var_1101 = new FocusManager(param2);
         this.var_1103 = new WindowToolTipAgent(param2);
         this.var_1106 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1104 != null)
         {
            this.var_1104.dispose();
            this.var_1104 = null;
         }
         if(this.var_1105 != null)
         {
            this.var_1105.dispose();
            this.var_1105 = null;
         }
         if(this.var_1102 != null)
         {
            this.var_1102.dispose();
            this.var_1102 = null;
         }
         if(this.var_1101 != null)
         {
            this.var_1101.dispose();
            this.var_1101 = null;
         }
         if(this.var_1103 != null)
         {
            this.var_1103.dispose();
            this.var_1103 = null;
         }
         if(this.var_1106 != null)
         {
            this.var_1106.dispose();
            this.var_1106 = null;
         }
         this.var_133 = null;
         this._windowContext = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1104;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1105;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1102;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1101;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1103;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1106;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
