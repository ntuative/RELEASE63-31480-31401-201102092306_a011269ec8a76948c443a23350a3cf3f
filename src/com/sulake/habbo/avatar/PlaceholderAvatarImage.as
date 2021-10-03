package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_673:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_785)
         {
            _structure = null;
            _assets = null;
            var_250 = null;
            var_269 = null;
            var_536 = null;
            var_524 = null;
            var_309 = null;
            if(!var_1221 && var_43)
            {
               var_43.dispose();
            }
            var_43 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_752 = null;
            var_785 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_673[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_673[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_400:
               switch(_loc3_)
               {
                  case AvatarAction.const_832:
                  case AvatarAction.const_562:
                  case AvatarAction.const_369:
                  case AvatarAction.const_678:
                  case AvatarAction.const_349:
                  case AvatarAction.const_634:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_271:
            case AvatarAction.const_864:
            case AvatarAction.const_263:
            case AvatarAction.const_744:
            case AvatarAction.const_804:
            case AvatarAction.const_610:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
