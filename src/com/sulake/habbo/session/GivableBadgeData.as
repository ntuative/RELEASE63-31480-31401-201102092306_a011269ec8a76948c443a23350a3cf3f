package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_287:int;
      
      private var var_2284:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_287 = param1;
         this.var_2284 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_287;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2284;
      }
   }
}
