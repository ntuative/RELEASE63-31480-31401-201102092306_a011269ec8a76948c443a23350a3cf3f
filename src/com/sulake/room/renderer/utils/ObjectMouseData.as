package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var _objectId:String = "";
      
      private var var_2106:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function get objectId() : String
      {
         return this._objectId;
      }
      
      public function set objectId(param1:String) : void
      {
         this._objectId = param1;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2106;
      }
      
      public function set spriteTag(param1:String) : void
      {
         this.var_2106 = param1;
      }
   }
}
