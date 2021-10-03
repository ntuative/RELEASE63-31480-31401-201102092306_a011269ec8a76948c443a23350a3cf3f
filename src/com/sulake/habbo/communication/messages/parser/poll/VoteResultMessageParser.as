package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_999:String;
      
      private var var_1381:Array;
      
      private var var_1108:Array;
      
      private var var_1726:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_999;
      }
      
      public function get choices() : Array
      {
         return this.var_1381.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1108.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1726;
      }
      
      public function flush() : Boolean
      {
         this.var_999 = "";
         this.var_1381 = [];
         this.var_1108 = [];
         this.var_1726 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_999 = param1.readString();
         this.var_1381 = [];
         this.var_1108 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1381.push(param1.readString());
            this.var_1108.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1726 = param1.readInteger();
         return true;
      }
   }
}
