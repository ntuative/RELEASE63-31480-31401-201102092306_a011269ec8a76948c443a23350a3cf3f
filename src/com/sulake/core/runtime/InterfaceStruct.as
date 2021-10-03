package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1398:IID;
      
      private var var_1777:String;
      
      private var var_115:IUnknown;
      
      private var var_748:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1398 = param1;
         this.var_1777 = getQualifiedClassName(this.var_1398);
         this.var_115 = param2;
         this.var_748 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1398;
      }
      
      public function get iis() : String
      {
         return this.var_1777;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_115;
      }
      
      public function get references() : uint
      {
         return this.var_748;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_115 == null;
      }
      
      public function dispose() : void
      {
         this.var_1398 = null;
         this.var_1777 = null;
         this.var_115 = null;
         this.var_748 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_748;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_748) : uint(0);
      }
   }
}
