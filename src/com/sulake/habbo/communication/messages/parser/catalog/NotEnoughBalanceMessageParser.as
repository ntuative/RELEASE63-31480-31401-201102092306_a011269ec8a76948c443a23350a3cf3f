package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1769:int = 0;
      
      private var var_1768:int = 0;
      
      private var var_1504:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1769;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1768;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1504;
      }
      
      public function flush() : Boolean
      {
         this.var_1769 = 0;
         this.var_1768 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1769 = param1.readInteger();
         this.var_1768 = param1.readInteger();
         this.var_1504 = param1.readInteger();
         return true;
      }
   }
}
