package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1536:int;
      
      private var var_1538:int;
      
      private var var_1537:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1538 = param1.readInteger();
         this.var_1536 = param1.readInteger();
         this.var_1537 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1536 = 0;
         this.var_1538 = 0;
         this.var_1537 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1536;
      }
      
      public function get messageId() : int
      {
         return this.var_1538;
      }
      
      public function get timestamp() : String
      {
         return this.var_1537;
      }
   }
}
