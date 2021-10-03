package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2186:int;
      
      private var var_1967:String;
      
      private var var_1599:int;
      
      private var var_372:int;
      
      private var var_2183:int = -1;
      
      private var var_2185:int;
      
      private var var_1598:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2186 = param3;
         this.var_1967 = param4;
         this.var_1599 = param5;
         this.var_372 = param6;
         this.var_2183 = param7;
         this.var_2185 = param8;
         this.var_1598 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2186;
      }
      
      public function get stuffData() : String
      {
         return this.var_1967;
      }
      
      public function get price() : int
      {
         return this.var_1599;
      }
      
      public function get status() : int
      {
         return this.var_372;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2183;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2185;
      }
      
      public function get offerCount() : int
      {
         return this.var_1598;
      }
   }
}
