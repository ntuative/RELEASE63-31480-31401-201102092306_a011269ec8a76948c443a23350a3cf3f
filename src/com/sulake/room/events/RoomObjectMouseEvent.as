package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_216:String = "ROE_MOUSE_CLICK";
      
      public static const const_1738:String = "ROE_MOUSE_ENTER";
      
      public static const const_499:String = "ROE_MOUSE_MOVE";
      
      public static const const_1718:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1792:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_500:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1790:String = "";
      
      private var var_2462:Boolean;
      
      private var var_2465:Boolean;
      
      private var var_2463:Boolean;
      
      private var var_2461:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1790 = param2;
         this.var_2462 = param5;
         this.var_2465 = param6;
         this.var_2463 = param7;
         this.var_2461 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1790;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2462;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2465;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2463;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2461;
      }
   }
}
