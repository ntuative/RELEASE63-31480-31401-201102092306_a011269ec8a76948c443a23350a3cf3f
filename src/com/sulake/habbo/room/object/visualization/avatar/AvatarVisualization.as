package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_911:String = "avatar";
      
      private static const const_584:Number = -0.01;
      
      private static const const_585:Number = -0.409;
      
      private static const const_909:int = 2;
      
      private static const const_1256:Array = [0,0,0];
      
      private static const const_1257:int = 3;
       
      
      private var var_572:AvatarVisualizationData = null;
      
      private var var_472:Map;
      
      private var var_467:Map;
      
      private var var_1084:int = 0;
      
      private var var_849:Boolean;
      
      private var var_536:String;
      
      private var var_811:String;
      
      private var var_1083:int = 0;
      
      private var var_570:BitmapDataAsset;
      
      private var var_844:BitmapDataAsset;
      
      private var var_1590:int = -1;
      
      private var var_1591:int = -1;
      
      private var var_1592:int = -1;
      
      private const const_910:int = 0;
      
      private const const_1691:int = 1;
      
      private const const_1679:int = 2;
      
      private const const_1680:int = 3;
      
      private const const_1255:int = 4;
      
      private var var_1660:int = -1;
      
      private var var_237:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1589:Boolean = false;
      
      private var var_1593:Boolean = false;
      
      private var _isSleeping:Boolean = false;
      
      private var var_1300:Boolean = false;
      
      private var var_574:Boolean = false;
      
      private var var_1299:int = 0;
      
      private var var_1302:int = 0;
      
      private var var_2163:int = 0;
      
      private var var_680:int = 0;
      
      private var var_681:int = 0;
      
      private var var_571:int = 0;
      
      private var var_1301:int = 0;
      
      private var var_1048:Boolean = false;
      
      private var var_1594:Boolean = false;
      
      private var var_1047:int = 0;
      
      private var var_682:int = 0;
      
      private var var_1595:Boolean = false;
      
      private var var_1049:int = 0;
      
      private var var_55:IAvatarImage = null;
      
      private var var_785:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_472 = new Map();
         this.var_467 = new Map();
         this.var_849 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_472 != null)
         {
            this.resetImages();
            this.var_472.dispose();
            this.var_467.dispose();
            this.var_472 = null;
         }
         this.var_572 = null;
         this.var_570 = null;
         this.var_844 = null;
         super.dispose();
         this.var_785 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_785;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_572 = param1 as AvatarVisualizationData;
         createSprites(this.const_1255);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_161)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_246) > 0 && param3);
            if(_loc5_ != this.var_1589)
            {
               this.var_1589 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_378) > 0;
            if(_loc5_ != this.var_1593)
            {
               this.var_1593 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_333) > 0;
            if(_loc5_ != this._isSleeping)
            {
               this._isSleeping = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_647) > 0 && param3);
            if(_loc5_ != this.var_1300)
            {
               this.var_1300 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1043) > 0;
            if(_loc5_ != this.var_574)
            {
               this.var_574 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_234);
            if(_loc6_ != this.var_1299)
            {
               this.var_1299 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_339);
            if(_loc7_ != this.var_237)
            {
               this.var_237 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_843);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1200);
            if(_loc6_ != this.var_1302)
            {
               this.var_1302 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_491);
            if(_loc6_ != this.var_680)
            {
               this.var_680 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_497);
            if(_loc6_ != this.var_681)
            {
               this.var_681 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_367);
            if(_loc6_ != this.var_571)
            {
               this.var_571 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_319);
            if(_loc6_ != this.var_1590)
            {
               this.var_1590 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_681 > 0 && param1.getNumber(RoomObjectVariableEnum.const_367) > 0)
            {
               if(this.var_571 != this.var_681)
               {
                  this.var_571 = this.var_681;
                  _loc4_ = true;
               }
            }
            else if(this.var_571 != 0)
            {
               this.var_571 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_865);
            if(_loc6_ != this.var_1047)
            {
               this.var_1047 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1030);
            if(_loc7_ != this.var_811)
            {
               this.var_811 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_178);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_161 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_536 != param1)
         {
            this.var_536 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_472)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_467)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_472.reset();
         this.var_467.reset();
         this.var_55 = null;
         _loc2_ = getSprite(this.const_910);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1300 = false;
         }
         if(this.var_237 == "sit" || this.var_237 == "lay")
         {
            this.var_1301 = param1 / 2;
         }
         else
         {
            this.var_1301 = 0;
         }
         this.var_1594 = false;
         this.var_1048 = false;
         if(this.var_237 == "lay")
         {
            this.var_1048 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1594 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_472.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_467.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_572.getAvatar(this.var_536,param1,this.var_811,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_472.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_467.length >= const_1257)
                  {
                     this.var_467.remove(this.var_467.getKeys().shift());
                  }
                  this.var_467.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_437 != param1.getUpdateID() || this.var_1660 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1590;
            if(this.var_237 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1591 || param4)
            {
               _loc5_ = true;
               this.var_1591 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_55.setDirectionAngle(AvatarSetType.const_34,_loc6_);
            }
            if(_loc7_ != this.var_1592 || param4)
            {
               _loc5_ = true;
               this.var_1592 = _loc7_;
               if(this.var_1592 != this.var_1591)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_55.setDirectionAngle(AvatarSetType.const_46,_loc7_);
               }
            }
            var_437 = param1.getUpdateID();
            this.var_1660 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1691);
         this.var_570 = null;
         if(this.var_237 == "mv" || this.var_237 == "std")
         {
            _loc2_.visible = true;
            if(this.var_570 == null || param1 != var_183)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_570 = this.var_55.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_570 = this.var_55.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_570 != null)
               {
                  _loc2_.asset = this.var_570.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_570 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_844 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1679);
         if(this.var_574)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_844 = this.var_572.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_844 = this.var_572.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_237 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_237 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_844 != null)
            {
               _loc2_.asset = this.var_844.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1680);
         if(this.var_1047 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_572.getAvatarRendererAsset("number_" + this.var_1047 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_572.getAvatarRendererAsset("number_" + this.var_1047 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_237 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_237 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_682 = 1;
               this.var_1595 = true;
               this.var_1049 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_682 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1680);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1595)
         {
            ++this.var_1049;
            if(this.var_1049 < 10)
            {
               return false;
            }
            if(this.var_682 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1049 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_682 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_682 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_682 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_682 = 0;
               this.var_1595 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_572 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = this.var_680;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc12_ || _loc6_ != var_183 || this.var_55 == null)
         {
            if(_loc6_ != var_183)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc10_ != this.var_680)
            {
               _loc11_ = true;
            }
            if(_loc8_ || this.var_55 == null || _loc11_)
            {
               this.var_55 = this.getAvatarImage(_loc6_,this.var_680);
               if(this.var_55 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc15_ = getSprite(this.const_910);
               if(_loc15_ && this.var_55 && this.var_55.isPlaceholder())
               {
                  _loc15_.alpha = 150;
               }
               else if(_loc15_)
               {
                  _loc15_.alpha = 255;
               }
            }
            if(this.var_55 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_55);
            var_183 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc13_:Boolean = _loc9_ || _loc12_ || _loc8_;
         var _loc14_:Boolean = (this.var_849 || this.var_1083 > 0) && param3;
         if(_loc13_)
         {
            this.var_1083 = const_909;
         }
         if(_loc13_ || _loc14_)
         {
            increaseUpdateId();
            --this.var_1083;
            --this.var_1084;
            if(!(this.var_1084 <= 0 || _loc8_ || _loc12_ || _loc7_))
            {
               return;
            }
            this.var_55.updateAnimationByFrames(1);
            this.var_1084 = const_909;
            _loc17_ = this.var_55.getCanvasOffsets();
            if(_loc17_ == null || _loc17_.length < 3)
            {
               _loc17_ = const_1256;
            }
            _loc16_ = getSprite(this.const_910);
            if(_loc16_ != null)
            {
               _loc20_ = this.var_55.getImage(AvatarSetType.const_34,false);
               if(_loc20_ != null)
               {
                  _loc16_.asset = _loc20_;
               }
               if(_loc16_.asset)
               {
                  _loc16_.offsetX = -1 * _loc6_ / 2 + _loc17_[0];
                  _loc16_.offsetY = -_loc16_.asset.height + _loc6_ / 4 + _loc17_[1] + this.var_1301;
               }
               if(this.var_1048)
               {
                  if(this.var_1594)
                  {
                     _loc16_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc16_.relativeDepth = const_585 + _loc17_[2];
                  }
               }
               else
               {
                  _loc16_.relativeDepth = const_584 + _loc17_[2];
               }
            }
            _loc16_ = getSprite(this.const_1679);
            if(_loc16_ != null && _loc16_.visible)
            {
               if(!this.var_1048)
               {
                  _loc16_.relativeDepth = const_584 - 0.01 + _loc17_[2];
               }
               else
               {
                  _loc16_.relativeDepth = const_585 - 0.01 + _loc17_[2];
               }
            }
            this.var_849 = this.var_55.isAnimating();
            _loc18_ = this.const_1255;
            for each(_loc19_ in this.var_55.getSprites())
            {
               if(_loc19_.id == const_911)
               {
                  _loc16_ = getSprite(this.const_910);
                  _loc21_ = this.var_55.getLayerData(_loc19_);
                  _loc22_ = _loc19_.getDirectionOffsetX(this.var_55.getDirection());
                  _loc23_ = _loc19_.getDirectionOffsetY(this.var_55.getDirection());
                  if(_loc21_ != null)
                  {
                     _loc22_ += _loc21_.dx;
                     _loc23_ += _loc21_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  _loc16_.offsetX += _loc22_;
                  _loc16_.offsetY += _loc23_;
               }
               else
               {
                  _loc16_ = getSprite(_loc18_);
                  if(_loc16_ != null)
                  {
                     _loc16_.capturesMouse = false;
                     _loc16_.visible = true;
                     _loc24_ = this.var_55.getLayerData(_loc19_);
                     _loc25_ = 0;
                     _loc26_ = _loc19_.getDirectionOffsetX(this.var_55.getDirection());
                     _loc27_ = _loc19_.getDirectionOffsetY(this.var_55.getDirection());
                     _loc28_ = _loc19_.getDirectionOffsetZ(this.var_55.getDirection());
                     _loc29_ = 0;
                     if(_loc19_.hasDirections)
                     {
                        _loc29_ = this.var_55.getDirection();
                     }
                     if(_loc24_ != null)
                     {
                        _loc25_ = _loc24_.animationFrame;
                        _loc26_ += _loc24_.dx;
                        _loc27_ += _loc24_.dy;
                        _loc29_ += _loc24_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc26_ /= 2;
                        _loc27_ /= 2;
                     }
                     if(_loc29_ < 0)
                     {
                        _loc29_ += 8;
                     }
                     else if(_loc29_ > 7)
                     {
                        _loc29_ -= 8;
                     }
                     _loc30_ = this.var_55.getScale() + "_" + _loc19_.member + "_" + _loc29_ + "_" + _loc25_;
                     _loc31_ = this.var_55.getAsset(_loc30_);
                     if(_loc31_ == null)
                     {
                        continue;
                     }
                     _loc16_.asset = _loc31_.content as BitmapData;
                     _loc16_.offsetX = -_loc31_.offset.x - _loc6_ / 2 + _loc26_;
                     _loc16_.offsetY = -_loc31_.offset.y + _loc27_ + this.var_1301;
                     if(this.var_1048)
                     {
                        _loc16_.relativeDepth = const_585 - 0.001 * spriteCount * _loc28_;
                     }
                     else
                     {
                        _loc16_.relativeDepth = const_584 - 0.001 * spriteCount * _loc28_;
                     }
                     if(_loc19_.ink == 33)
                     {
                        _loc16_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc16_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc18_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_400,this.var_237,this._postureParameter);
         if(this.var_1299 > 0)
         {
            param1.appendAction(AvatarAction.const_314,AvatarAction.const_1538[this.var_1299]);
         }
         if(this.var_1302 > 0)
         {
            param1.appendAction(AvatarAction.const_864,this.var_1302);
         }
         if(this.var_2163 > 0)
         {
            param1.appendAction(AvatarAction.const_744,this.var_2163);
         }
         if(this.var_681 > 0)
         {
            param1.appendAction(AvatarAction.const_804,this.var_681);
         }
         if(this.var_571 > 0)
         {
            param1.appendAction(AvatarAction.const_610,this.var_571);
         }
         if(this.var_1589)
         {
            param1.appendAction(AvatarAction.const_310);
         }
         if(this._isSleeping || this.var_1300)
         {
            param1.appendAction(AvatarAction.const_558);
         }
         if(this.var_1593)
         {
            param1.appendAction(AvatarAction.const_263);
         }
         if(this.var_680 > 0)
         {
            param1.appendAction(AvatarAction.const_271,this.var_680);
         }
         param1.endActionAppends();
         this.var_849 = param1.isAnimating();
         var _loc2_:int = this.const_1255;
         for each(_loc3_ in this.var_55.getSprites())
         {
            if(_loc3_.id != const_911)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
