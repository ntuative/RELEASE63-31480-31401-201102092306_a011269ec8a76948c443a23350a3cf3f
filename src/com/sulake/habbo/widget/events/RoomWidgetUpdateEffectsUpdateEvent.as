package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_686:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_247:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_686,param2,param3);
         this.var_247 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_247;
      }
   }
}
