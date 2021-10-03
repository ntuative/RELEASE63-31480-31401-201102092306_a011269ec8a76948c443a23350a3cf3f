package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1153:int = 1;
      
      public static const const_552:int = 2;
      
      private static const const_942:int = 5;
      
      private static const const_1320:int = 250;
      
      private static const const_1323:int = 100;
      
      private static const const_1321:int = 180;
      
      private static const const_1322:int = 200;
       
      
      private var var_351:Timer;
      
      private var var_350:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_76:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1792:int = 2;
      
      private var var_755:BitmapData;
      
      private var var_934:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_351 = new Timer(const_1320,1);
         this.var_350 = new Timer(const_1323,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_76 = param1;
         this.var_76.visible = false;
         this._assets = param2;
         this.var_351.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_350.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_934 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_755 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_351 != null)
         {
            this.var_351.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_351.stop();
            this.var_351 = null;
         }
         if(this.var_350 != null)
         {
            this.var_350.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_350.stop();
            this.var_350 = null;
         }
         this._assets = null;
         this.var_76 = null;
         this._parent = null;
         this.var_755 = null;
         this.var_934 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_76 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_76);
         }
         this._parent = param1;
         this.var_1792 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_76.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_76.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1321,param3.width),Math.min(const_1322,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_76.width - _loc6_.width) / 2;
            this.var_76.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_350.reset();
         this.var_351.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_76.visible = true;
         this._parent.addChild(this.var_76);
         this.refreshArrow(this.var_1792);
         switch(this.var_1792)
         {
            case const_1153:
               this.var_76.x = -1 * this.var_76.width - const_942;
               break;
            case const_552:
               this.var_76.x = this._parent.width + const_942;
         }
         this.var_76.y = (this._parent.height - this.var_76.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_76.visible = false;
         this.var_350.reset();
         this.var_351.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_76);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_350.reset();
         this.var_351.reset();
         this.var_351.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_350.reset();
         this.var_351.reset();
         this.var_350.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_76 == null || this.var_76.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_76.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1153:
               _loc2_.bitmap = this.var_934.clone();
               _loc2_.width = this.var_934.width;
               _loc2_.height = this.var_934.height;
               _loc2_.y = (this.var_76.height - this.var_934.height) / 2;
               _loc2_.x = this.var_76.width - 1;
               break;
            case const_552:
               _loc2_.bitmap = this.var_755.clone();
               _loc2_.width = this.var_755.width;
               _loc2_.height = this.var_755.height;
               _loc2_.y = (this.var_76.height - this.var_755.height) / 2;
               _loc2_.x = -1 * this.var_755.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
