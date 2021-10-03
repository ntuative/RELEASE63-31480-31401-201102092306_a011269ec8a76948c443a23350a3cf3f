package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1670:int = 0;
      
      private var var_1669:int = 0;
      
      private var var_2625:int = 0;
      
      private var var_2624:Boolean = false;
      
      private var var_2229:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1670 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1669 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2625 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2624 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2229 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1670;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1669;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2625;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2624;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2229;
      }
   }
}
