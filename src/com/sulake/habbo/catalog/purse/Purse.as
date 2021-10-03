package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_173:int = 0;
       
      
      private var var_2268:int = 0;
      
      private var var_1339:Dictionary;
      
      private var var_1670:int = 0;
      
      private var var_1669:int = 0;
      
      private var var_2229:Boolean = false;
      
      private var var_2222:int = 0;
      
      private var var_2227:int = 0;
      
      public function Purse()
      {
         this.var_1339 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2268;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2268 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1670;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1670 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1669;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1669 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1670 > 0 || this.var_1669 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2229;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2229 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2222;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2222 = param1;
      }
      
      public function get method_3() : int
      {
         return this.var_2227;
      }
      
      public function set method_3(param1:int) : void
      {
         this.var_2227 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1339;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1339 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1339[param1];
      }
   }
}
