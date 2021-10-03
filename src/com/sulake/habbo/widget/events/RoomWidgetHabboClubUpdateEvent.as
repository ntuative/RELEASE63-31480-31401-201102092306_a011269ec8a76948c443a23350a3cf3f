package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_217:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2099:int = 0;
      
      private var var_2098:int = 0;
      
      private var var_2095:int = 0;
      
      private var var_2097:Boolean = false;
      
      private var var_2096:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_217,param6,param7);
         this.var_2099 = param1;
         this.var_2098 = param2;
         this.var_2095 = param3;
         this.var_2097 = param4;
         this.var_2096 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2099;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2098;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2095;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2097;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2096;
      }
   }
}
