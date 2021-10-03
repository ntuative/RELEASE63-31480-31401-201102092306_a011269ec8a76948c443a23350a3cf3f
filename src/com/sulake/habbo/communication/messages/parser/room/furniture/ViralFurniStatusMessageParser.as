package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_170:String;
      
      private var _objectId:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_372:int;
      
      private var var_1071:String;
      
      private var var_2027:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_170;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get shareId() : String
      {
         return this.var_1071;
      }
      
      public function get status() : int
      {
         return this.var_372;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2027;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_170 = param1.readString();
         this._objectId = param1.readInteger();
         this.var_372 = param1.readInteger();
         this.var_1071 = param1.readString();
         this.var_2027 = param1.readString();
         return true;
      }
   }
}
