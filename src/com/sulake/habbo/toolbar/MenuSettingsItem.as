package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2001:String;
      
      private var var_2399:Array;
      
      private var var_2398:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2001 = param1;
         this.var_2399 = param2;
         this.var_2398 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2001;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2399;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2398;
      }
   }
}
