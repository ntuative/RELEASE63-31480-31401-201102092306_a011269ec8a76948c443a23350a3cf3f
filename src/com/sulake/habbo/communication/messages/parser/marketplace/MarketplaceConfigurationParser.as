package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1246:Boolean;
      
      private var var_2145:int;
      
      private var var_1834:int;
      
      private var var_1833:int;
      
      private var var_2141:int;
      
      private var var_2144:int;
      
      private var var_2143:int;
      
      private var var_2142:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1246;
      }
      
      public function get commission() : int
      {
         return this.var_2145;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1834;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1833;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2144;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2141;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2143;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2142;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1246 = param1.readBoolean();
         this.var_2145 = param1.readInteger();
         this.var_1834 = param1.readInteger();
         this.var_1833 = param1.readInteger();
         this.var_2144 = param1.readInteger();
         this.var_2141 = param1.readInteger();
         this.var_2143 = param1.readInteger();
         this.var_2142 = param1.readInteger();
         return true;
      }
   }
}
