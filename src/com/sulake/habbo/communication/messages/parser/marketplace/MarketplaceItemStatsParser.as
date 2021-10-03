package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2185:int;
      
      private var var_2352:int;
      
      private var var_2354:int;
      
      private var _dayOffsets:Array;
      
      private var var_1674:Array;
      
      private var var_1675:Array;
      
      private var var_2351:int;
      
      private var var_2353:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2185;
      }
      
      public function get offerCount() : int
      {
         return this.var_2352;
      }
      
      public function get historyLength() : int
      {
         return this.var_2354;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1674;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1675;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2351;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2353;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2185 = param1.readInteger();
         this.var_2352 = param1.readInteger();
         this.var_2354 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1674 = [];
         this.var_1675 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1674.push(param1.readInteger());
            this.var_1675.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2353 = param1.readInteger();
         this.var_2351 = param1.readInteger();
         return true;
      }
   }
}
