package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_502:WallRasterizer;
      
      private var var_501:FloorRasterizer;
      
      private var var_768:WallAdRasterizer;
      
      private var var_503:LandscapeRasterizer;
      
      private var var_767:PlaneMaskManager;
      
      private var var_694:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_502 = new WallRasterizer();
         this.var_501 = new FloorRasterizer();
         this.var_768 = new WallAdRasterizer();
         this.var_503 = new LandscapeRasterizer();
         this.var_767 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_694;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_501;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_502;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_768;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_503;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_767;
      }
      
      public function dispose() : void
      {
         if(this.var_502 != null)
         {
            this.var_502.dispose();
            this.var_502 = null;
         }
         if(this.var_501 != null)
         {
            this.var_501.dispose();
            this.var_501 = null;
         }
         if(this.var_768 != null)
         {
            this.var_768.dispose();
            this.var_768 = null;
         }
         if(this.var_503 != null)
         {
            this.var_503.dispose();
            this.var_503 = null;
         }
         if(this.var_767 != null)
         {
            this.var_767.dispose();
            this.var_767 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_502 != null)
         {
            this.var_502.clearCache();
         }
         if(this.var_501 != null)
         {
            this.var_501.clearCache();
         }
         if(this.var_503 != null)
         {
            this.var_503.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_502.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_501.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_768.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_503.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_767.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_694)
         {
            return;
         }
         this.var_502.initializeAssetCollection(param1);
         this.var_501.initializeAssetCollection(param1);
         this.var_768.initializeAssetCollection(param1);
         this.var_503.initializeAssetCollection(param1);
         this.var_767.initializeAssetCollection(param1);
         this.var_694 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
