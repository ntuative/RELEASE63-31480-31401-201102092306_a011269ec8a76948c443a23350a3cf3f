package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_536:String;
      
      private var var_900:String;
      
      private var var_2296:String;
      
      private var var_1727:String;
      
      private var var_2297:int;
      
      private var var_2300:String;
      
      private var var_2299:int;
      
      private var var_2298:int;
      
      private var _respectTotal:int;
      
      private var var_997:int;
      
      private var var_653:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_536 = param1.readString();
         this.var_900 = param1.readString();
         this.var_2296 = param1.readString();
         this.var_1727 = param1.readString();
         this.var_2297 = param1.readInteger();
         this.var_2300 = param1.readString();
         this.var_2299 = param1.readInteger();
         this.var_2298 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_997 = param1.readInteger();
         this.var_653 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function get sex() : String
      {
         return this.var_900;
      }
      
      public function get customData() : String
      {
         return this.var_2296;
      }
      
      public function get realName() : String
      {
         return this.var_1727;
      }
      
      public function get tickets() : int
      {
         return this.var_2297;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2300;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2299;
      }
      
      public function get directMail() : int
      {
         return this.var_2298;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get respectLeft() : int
      {
         return this.var_997;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_653;
      }
   }
}
