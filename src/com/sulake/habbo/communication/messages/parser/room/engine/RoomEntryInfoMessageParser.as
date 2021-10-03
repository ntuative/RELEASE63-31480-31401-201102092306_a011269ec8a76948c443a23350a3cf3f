package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1529:Boolean;
      
      private var var_2084:int;
      
      private var var_410:Boolean;
      
      private var var_1018:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1529;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2084;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1018;
      }
      
      public function get owner() : Boolean
      {
         return this.var_410;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1018 != null)
         {
            this.var_1018.dispose();
            this.var_1018 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1529 = param1.readBoolean();
         if(this.var_1529)
         {
            this.var_2084 = param1.readInteger();
            this.var_410 = param1.readBoolean();
         }
         else
         {
            this.var_1018 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
