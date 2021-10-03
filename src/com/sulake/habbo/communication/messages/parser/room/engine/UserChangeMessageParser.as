package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_536:String;
      
      private var var_900:String;
      
      private var var_1690:String;
      
      private var var_1996:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function get sex() : String
      {
         return this.var_900;
      }
      
      public function get customInfo() : String
      {
         return this.var_1690;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1996;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_536 = "";
         this.var_900 = "";
         this.var_1690 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_536 = param1.readString();
         this.var_900 = param1.readString();
         this.var_1690 = param1.readString();
         this.var_1996 = param1.readInteger();
         if(this.var_900)
         {
            this.var_900 = this.var_900.toUpperCase();
         }
         return true;
      }
   }
}
