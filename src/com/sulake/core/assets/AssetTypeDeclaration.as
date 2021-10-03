package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2663:String;
      
      private var var_2665:Class;
      
      private var var_2664:Class;
      
      private var var_1884:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2663 = param1;
         this.var_2665 = param2;
         this.var_2664 = param3;
         if(rest == null)
         {
            this.var_1884 = new Array();
         }
         else
         {
            this.var_1884 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2663;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2665;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2664;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1884;
      }
   }
}
