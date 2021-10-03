package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_290:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var _userId:int;
      
      private var var_536:String;
      
      private var var_811:String;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_290,param4,param5);
         this._userId = param1;
         this.var_536 = param2;
         this.var_811 = param3;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function get gender() : String
      {
         return this.var_811;
      }
   }
}
