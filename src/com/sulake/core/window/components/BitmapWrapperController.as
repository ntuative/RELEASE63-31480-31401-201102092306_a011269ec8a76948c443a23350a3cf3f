package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.graphics.WindowRedrawFlag;
   import com.sulake.core.window.utils.IBitmapDataContainer;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class BitmapWrapperController extends WindowController implements IBitmapWrapperWindow, IBitmapDataContainer
   {
       
      
      protected var _bitmapData:BitmapData;
      
      protected var var_527:Boolean = true;
      
      protected var var_798:String;
      
      public function BitmapWrapperController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function get bitmap() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmap(param1:BitmapData) : void
      {
         if(this.var_527 && this._bitmapData && param1 != this._bitmapData)
         {
            this._bitmapData.dispose();
         }
         this._bitmapData = param1;
         var_16.invalidate(this,var_11,WindowRedrawFlag.const_66);
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         this.bitmap = param1;
      }
      
      public function get bitmapAssetName() : String
      {
         return this.var_798;
      }
      
      public function set bitmapAssetName(param1:String) : void
      {
         this.var_798 = param1;
      }
      
      public function get disposesBitmap() : Boolean
      {
         return this.var_527;
      }
      
      public function set disposesBitmap(param1:Boolean) : void
      {
         this.var_527 = param1;
      }
      
      override public function clone() : IWindow
      {
         var _loc1_:BitmapWrapperController = super.clone() as BitmapWrapperController;
         _loc1_._bitmapData = this._bitmapData;
         _loc1_.var_527 = this.var_527;
         _loc1_.var_798 = this.var_798;
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         if(this._bitmapData)
         {
            if(this.var_527)
            {
               this._bitmapData.dispose();
            }
            this._bitmapData = null;
         }
         super.dispose();
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         if(this.var_527 != PropertyDefaults.const_1183)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_794,this.var_527,PropertyStruct.const_37,true));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_1425);
         }
         if(this.var_798 != PropertyDefaults.const_1139)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_677,this.var_798,PropertyStruct.const_49,true));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_1523);
         }
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case PropertyDefaults.const_794:
                  this.var_527 = _loc2_.value as Boolean;
                  break;
               case PropertyDefaults.const_677:
                  this.var_798 = _loc2_.value as String;
                  break;
            }
         }
         super.properties = param1;
      }
   }
}
