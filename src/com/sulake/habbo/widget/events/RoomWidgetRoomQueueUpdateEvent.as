package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_386:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_523:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1005:int;
      
      private var var_2094:Boolean;
      
      private var var_412:Boolean;
      
      private var var_1897:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1005 = param2;
         this.var_2094 = param3;
         this.var_412 = param4;
         this.var_1897 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1005;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2094;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_412;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1897;
      }
   }
}
