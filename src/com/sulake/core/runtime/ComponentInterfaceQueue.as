package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1745:IID;
      
      private var var_785:Boolean;
      
      private var var_1125:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1745 = param1;
         this.var_1125 = new Array();
         this.var_785 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1745;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_785;
      }
      
      public function get receivers() : Array
      {
         return this.var_1125;
      }
      
      public function dispose() : void
      {
         if(!this.var_785)
         {
            this.var_785 = true;
            this.var_1745 = null;
            while(this.var_1125.length > 0)
            {
               this.var_1125.pop();
            }
            this.var_1125 = null;
         }
      }
   }
}
