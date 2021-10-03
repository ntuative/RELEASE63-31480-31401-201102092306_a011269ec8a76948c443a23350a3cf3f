package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1875:int = 1;
      
      public static const const_1828:int = 2;
      
      public static const const_1832:int = 3;
      
      public static const const_1934:int = 4;
      
      public static const const_1497:int = 5;
      
      public static const const_1885:int = 6;
      
      public static const const_1601:int = 7;
      
      public static const const_1566:int = 8;
      
      public static const const_1763:int = 9;
      
      public static const const_1536:int = 10;
      
      public static const const_1542:int = 11;
      
      public static const const_1605:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1536:int;
      
      private var var_1446:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1536 = param1.readInteger();
         this.var_1446 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1536;
      }
      
      public function get info() : String
      {
         return this.var_1446;
      }
   }
}
