package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_80:String = "i";
      
      public static const const_85:String = "s";
      
      public static const const_255:String = "e";
       
      
      private var var_1720:String;
      
      private var var_2566:int;
      
      private var var_1378:String;
      
      private var var_1377:int;
      
      private var var_1721:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1720 = param1.readString();
         this.var_2566 = param1.readInteger();
         this.var_1378 = param1.readString();
         this.var_1377 = param1.readInteger();
         this.var_1721 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1720;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2566;
      }
      
      public function get extraParam() : String
      {
         return this.var_1378;
      }
      
      public function get productCount() : int
      {
         return this.var_1377;
      }
      
      public function get expiration() : int
      {
         return this.var_1721;
      }
   }
}
