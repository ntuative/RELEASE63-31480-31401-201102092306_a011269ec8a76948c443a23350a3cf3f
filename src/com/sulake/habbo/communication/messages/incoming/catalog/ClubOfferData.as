package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1632:String;
      
      private var var_1599:int;
      
      private var var_2251:Boolean;
      
      private var var_2249:Boolean;
      
      private var var_2248:int;
      
      private var var_2250:int;
      
      private var var_2252:int;
      
      private var var_2247:int;
      
      private var var_2254:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1632 = param1.readString();
         this.var_1599 = param1.readInteger();
         this.var_2251 = param1.readBoolean();
         this.var_2249 = param1.readBoolean();
         this.var_2248 = param1.readInteger();
         this.var_2250 = param1.readInteger();
         this.var_2252 = param1.readInteger();
         this.var_2247 = param1.readInteger();
         this.var_2254 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1632;
      }
      
      public function get price() : int
      {
         return this.var_1599;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2251;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2249;
      }
      
      public function get periods() : int
      {
         return this.var_2248;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2250;
      }
      
      public function get year() : int
      {
         return this.var_2252;
      }
      
      public function get month() : int
      {
         return this.var_2247;
      }
      
      public function get day() : int
      {
         return this.var_2254;
      }
   }
}
