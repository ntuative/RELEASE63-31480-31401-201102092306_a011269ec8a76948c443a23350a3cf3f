package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_983:String;
      
      protected var var_173:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_791:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_791 = param1;
         this.var_983 = param2;
      }
      
      public function get url() : String
      {
         return this.var_983;
      }
      
      public function get content() : Object
      {
         return this.var_173;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_791;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_173.loaderInfo != null)
            {
               if(this.var_173.loaderInfo.loader != null)
               {
                  this.var_173.loaderInfo.loader.unload();
               }
            }
            this.var_173 = null;
            this.var_791 = null;
            this._disposed = true;
            this.var_983 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_173 = param1 as DisplayObject;
            if(this.var_173 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_173 = DisplayAsset(param1).var_173;
            this.var_791 = DisplayAsset(param1).var_791;
            if(this.var_173 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_173 = DisplayAsset(param1).var_173;
            this.var_791 = DisplayAsset(param1).var_791;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
