package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2274:Number;
      
      private var var_1617:Number;
      
      private var var_861:Number;
      
      private var var_860:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2274 = param1;
         this.var_1617 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_861 = param1;
         this.var_860 = 0;
      }
      
      public function update() : void
      {
         this.var_861 += this.var_1617;
         this.var_860 += this.var_861;
         if(this.var_860 > 0)
         {
            this.var_860 = 0;
            this.var_861 = this.var_2274 * -1 * this.var_861;
         }
      }
      
      public function get location() : Number
      {
         return this.var_860;
      }
   }
}
