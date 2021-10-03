package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_819:IAssetLoader;
      
      private var var_1744:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1744 = param1;
         this.var_819 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1744;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_819;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_819 != null)
            {
               if(!this.var_819.disposed)
               {
                  this.var_819.dispose();
                  this.var_819 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
