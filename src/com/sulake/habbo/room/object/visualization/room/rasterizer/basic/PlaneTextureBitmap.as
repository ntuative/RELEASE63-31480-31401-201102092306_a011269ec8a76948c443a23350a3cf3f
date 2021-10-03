package com.sulake.habbo.room.object.visualization.room.rasterizer.basic
{
   import flash.display.BitmapData;
   
   public class PlaneTextureBitmap
   {
      
      public static const const_54:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _bitmap:BitmapData = null;
      
      private var var_2280:Number = -1.0;
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_2278:Number = -1.0;
      
      private var var_2279:Number = 1.0;
      
      public function PlaneTextureBitmap(param1:BitmapData, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         this.var_2280 = param2;
         this._normalMaxX = param3;
         this.var_2278 = param4;
         this.var_2279 = param5;
         this._bitmap = param1;
      }
      
      public function get bitmap() : BitmapData
      {
         return this._bitmap;
      }
      
      public function get normalMinX() : Number
      {
         return this.var_2280;
      }
      
      public function get normalMaxX() : Number
      {
         return this._normalMaxX;
      }
      
      public function get normalMinY() : Number
      {
         return this.var_2278;
      }
      
      public function get normalMaxY() : Number
      {
         return this.var_2279;
      }
      
      public function dispose() : void
      {
         this._bitmap = null;
      }
   }
}
