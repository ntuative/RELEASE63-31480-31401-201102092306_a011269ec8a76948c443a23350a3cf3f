package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2801:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_134 = param1.desktop;
         var_80 = param1.var_1215 as WindowController;
         _lastClickTarget = param1.var_1214 as WindowController;
         var_151 = param1.renderer;
         var_801 = param1.var_1217;
         param2.begin();
         param2.end();
         param1.desktop = var_134;
         param1.var_1215 = var_80;
         param1.var_1214 = _lastClickTarget;
         param1.renderer = var_151;
         param1.var_1217 = var_801;
      }
   }
}
