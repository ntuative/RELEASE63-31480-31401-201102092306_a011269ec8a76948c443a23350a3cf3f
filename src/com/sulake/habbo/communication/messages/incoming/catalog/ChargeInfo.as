package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2116:int;
      
      private var var_2117:int;
      
      private var var_1100:int;
      
      private var var_1099:int;
      
      private var var_1504:int;
      
      private var var_2115:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2116 = param1.readInteger();
         this.var_2117 = param1.readInteger();
         this.var_1100 = param1.readInteger();
         this.var_1099 = param1.readInteger();
         this.var_1504 = param1.readInteger();
         this.var_2115 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2116;
      }
      
      public function get charges() : int
      {
         return this.var_2117;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1100;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1099;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2115;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1504;
      }
   }
}
