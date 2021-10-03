package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectRoomUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_699:String = "RORUM_ROOM_WALL_UPDATE";
      
      public static const const_801:String = "RORUM_ROOM_FLOOR_UPDATE";
      
      public static const const_752:String = "RORUM_ROOM_LANDSCAPE_UPDATE";
       
      
      private var _type:String = "";
      
      private var var_163:String = "";
      
      public function RoomObjectRoomUpdateMessage(param1:String, param2:String)
      {
         super(null,null);
         this._type = param1;
         this.var_163 = param2;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get value() : String
      {
         return this.var_163;
      }
   }
}
