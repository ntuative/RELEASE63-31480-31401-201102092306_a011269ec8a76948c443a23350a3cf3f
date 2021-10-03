package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.structure.AvatarCanvas;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class PlaceholderPetImage extends PetImage
   {
       
      
      private var _assets:IAssetLibrary;
      
      private var var_577:Map;
      
      private var var_43:BitmapData;
      
      public function PlaceholderPetImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:String, param4:String, param5:IAssetLibrary)
      {
         super(param1,param2,param3,param4);
         this._assets = param5;
         this.var_577 = new Map();
         var _loc6_:AvatarCanvas = _structure.getCanvas(_scale,var_269.definition.geometryType);
         if(_loc6_)
         {
            this.var_43 = new BitmapData(_loc6_.width,_loc6_.height,true,16777215);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this.var_577)
         {
            for each(_loc1_ in this.var_577)
            {
            }
            this.var_577.dispose();
            var _loc2_:* = null;
            this.var_577 = null;
            _loc2_;
         }
         if(this.var_43)
         {
            _loc2_ = null;
            this.var_43 = null;
            _loc2_;
         }
         _loc2_ = null;
         this._assets = null;
         _loc2_;
         super.dispose();
      }
      
      override public function getCroppedImage(param1:String) : BitmapData
      {
         if(var_785)
         {
            return null;
         }
         var _loc2_:BitmapData = this.getPlaceHolderImage(var_85,_scale);
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_.clone();
      }
      
      override public function getImage(param1:String, param2:Boolean) : BitmapData
      {
         if(var_785)
         {
            return null;
         }
         var _loc3_:BitmapData = this.getPlaceHolderImage(var_85,_scale);
         if(!_loc3_ || !this.var_43)
         {
            return null;
         }
         this.var_43.fillRect(this.var_43.rect,16777215);
         this.var_43.copyPixels(_loc3_,_loc3_.rect,new Point((this.var_43.width - _loc3_.width) / 2,this.var_43.height - _loc3_.height),null,null,true);
         if(param2)
         {
            return this.var_43.clone();
         }
         return this.var_43;
      }
      
      private function getPlaceHolderImage(param1:int, param2:String) : BitmapData
      {
         var _loc5_:* = null;
         var _loc3_:String = "pet_placeholder_";
         if(param2 == AvatarScaleType.const_90)
         {
            var _loc6_:* = _loc3_ + "s";
            _loc3_ += "s";
            _loc6_;
         }
         _loc6_ = _loc3_ + param1.toString();
         _loc3_ += param1.toString();
         _loc6_;
         _loc6_ = _loc3_ + "_png";
         _loc3_ += "_png";
         _loc6_;
         var _loc4_:BitmapData = this.var_577.getValue(_loc3_);
         if(!_loc4_)
         {
            _loc5_ = this._assets.getAssetByName(_loc3_) as BitmapDataAsset;
            _loc6_ = _loc5_.content as BitmapData;
            _loc4_ = _loc5_.content as BitmapData;
            _loc6_;
            this.var_577.add(_loc3_,_loc4_.clone());
            _loc4_ = this.var_577.getValue(_loc3_);
         }
         return _loc4_;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}