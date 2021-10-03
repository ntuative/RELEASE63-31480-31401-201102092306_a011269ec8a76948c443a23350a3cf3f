package com.sulake.habbo.advertisement
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.advertisement.events.AdEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.advertisement.InterstitialMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.advertisement.RoomAdMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.advertisement.GetInterstitialMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.advertisement.GetRoomAdMessageComposer;
   import com.sulake.habbo.communication.messages.parser.advertisement.InterstitialMessageParser;
   import com.sulake.habbo.communication.messages.parser.advertisement.RoomAdMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.system.Security;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class AdManager extends Component implements IAdManager
   {
       
      
      private var var_282:IHabboCommunicationManager;
      
      private var _connection:IConnection;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_2686:Boolean;
      
      private var var_1460:String;
      
      private var var_2684:String;
      
      private var var_2687:int = 0;
      
      private var var_1201:int = 0;
      
      private var var_2685:int = 0;
      
      private var var_1893:int = 0;
      
      private var var_1892:int = 0;
      
      private var var_224:Timer;
      
      private var var_1459:String;
      
      private var var_1891:String;
      
      private var var_1203:BitmapData = null;
      
      private var var_1202:BitmapData = null;
      
      public function AdManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this._connection = null;
         if(this.var_282 != null)
         {
            release(new IIDHabboCommunicationManager());
            this.var_282 = null;
         }
         if(this._config != null)
         {
            release(new IIDHabboConfigurationManager());
            this._config = null;
         }
         if(this.var_1203)
         {
            this.var_1203.dispose();
            this.var_1203 = null;
         }
         if(this.var_1202)
         {
            this.var_1202.dispose();
            this.var_1202 = null;
         }
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_282 = param2 as IHabboCommunicationManager;
         if(this.var_282 == null)
         {
            return;
         }
         this._connection = this.var_282.getHabboMainConnection(this.onConnectionReady);
         if(this._connection != null)
         {
            this.onConnectionReady(this._connection);
         }
      }
      
      private function onConnectionReady(param1:IConnection) : void
      {
         if(disposed || param1 == null)
         {
            return;
         }
         this._connection = param1;
         this._connection.addMessageEvent(new InterstitialMessageEvent(this.onInterstitial));
         this._connection.addMessageEvent(new RoomAdMessageEvent(this.onRoomAd));
      }
      
      private function onConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         this._config = param2 as IHabboConfigurationManager;
         if(this._config == null)
         {
            return;
         }
         this.var_2686 = this._config.getKey("interstitial.enabled","INotify") == "true";
         this.var_2687 = int(this._config.getKey("interstitial.interval","30000"));
         this.var_2685 = int(this._config.getKey("interstitial.show.time","5000"));
         this.var_1893 = int(this._config.getKey("interstitial.max.displays.flash","-1"));
         var _loc3_:String = this._config.getKey("ads.domain");
         if(_loc3_ != "")
         {
            Security.loadPolicyFile("http://" + _loc3_ + "/crossdomain.xml");
         }
         var _loc4_:String = this._config.getKey("billboard.adwarning.left.url");
         var _loc5_:String = this._config.getKey("billboard.adwarning.right.url");
         var _loc6_:String = this._config.getKey("image.library.url");
         if(_loc4_ != "" && _loc5_ != "")
         {
            _loc4_ = _loc6_ + _loc4_;
            _loc5_ = _loc6_ + _loc5_;
            _loc7_ = new URLRequest(_loc4_);
            _loc8_ = assets.loadAssetFromFile("adWarningL",_loc7_,"image/png");
            _loc8_.addEventListener(AssetLoaderEvent.const_28,this.adWarningLeftReady);
            _loc7_ = new URLRequest(_loc5_);
            _loc8_ = assets.loadAssetFromFile("adWarningRight",_loc7_,"image/png");
            _loc8_.addEventListener(AssetLoaderEvent.const_28,this.adWarningRightReady);
         }
      }
      
      public function showInterstitial() : Boolean
      {
         if(!this.var_2686)
         {
            return false;
         }
         if(this.var_224 != null && this.var_224.running)
         {
            this.var_224.reset();
            return false;
         }
         if(this.var_1201 == 0)
         {
            this.var_1201 = getTimer();
            return false;
         }
         if(this.var_1893 > 0 && this.var_1892 >= this.var_1893)
         {
            return false;
         }
         var _loc1_:int = getTimer() - this.var_1201;
         if(_loc1_ > this.var_2687)
         {
            ++this.var_1892;
            this._connection.send(new GetInterstitialMessageComposer());
            return true;
         }
         return false;
      }
      
      private function onInterstitial(param1:InterstitialMessageEvent) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:InterstitialMessageParser = param1.getParser();
         this.var_1460 = _loc2_.imageUrl;
         this.var_2684 = _loc2_.clickUrl;
         this.var_1201 = getTimer();
         if(this.var_1460 != "")
         {
            _loc3_ = this.var_1460;
            if(assets.hasAsset(_loc3_))
            {
               assets.removeAsset(assets.getAssetByName(_loc3_));
            }
            if(this.var_224 == null)
            {
               this.var_224 = new Timer(this.var_2685,1);
               this.var_224.addEventListener(TimerEvent.TIMER_COMPLETE,this.interstitialTimerComplete);
            }
            if(this.var_224.running)
            {
               this.var_224.reset();
            }
            this.var_224.start();
            _loc4_ = new URLRequest(this.var_1460);
            _loc5_ = assets.loadAssetFromFile(_loc3_,_loc4_,"image/jpeg");
            _loc5_.addEventListener(AssetLoaderEvent.const_28,this.interstitialLoaderEventHandler);
            _loc5_.addEventListener(AssetLoaderEvent.const_42,this.interstitialLoaderEventHandler);
         }
         else
         {
            this.stopInterstitial();
         }
      }
      
      private function interstitialLoaderEventHandler(param1:AssetLoaderEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 == null)
         {
            return;
         }
         switch(param1.type)
         {
            case AssetLoaderEvent.const_28:
               _loc2_ = param1.target as AssetLoaderStruct;
               if(_loc2_ != null)
               {
                  _loc3_ = _loc2_.assetLoader;
                  if(_loc3_ != null)
                  {
                     _loc4_ = _loc3_.content as Bitmap;
                     this.startInterstitial(_loc4_);
                     return;
                  }
               }
               this.stopInterstitial();
               break;
            case AssetLoaderEvent.const_42:
               this.stopInterstitial();
         }
      }
      
      private function startInterstitial(param1:Bitmap) : void
      {
         if(this.var_224 != null && !this.var_224.running)
         {
            return;
         }
         if(this.isValidAdImage(param1))
         {
            events.dispatchEvent(new AdEvent(AdEvent.const_488,0,0,param1.bitmapData,this.var_2684));
            this.var_1201 = getTimer();
         }
         else
         {
            this.stopInterstitial();
         }
      }
      
      private function interstitialTimerComplete(param1:TimerEvent) : void
      {
         this.stopInterstitial();
      }
      
      private function stopInterstitial() : void
      {
         if(this.var_224 != null && this.var_224.running)
         {
            this.var_224.reset();
         }
         if(events != null)
         {
            events.dispatchEvent(new AdEvent(AdEvent.const_460));
         }
      }
      
      public function showRoomAd() : void
      {
         this._connection.send(new GetRoomAdMessageComposer());
      }
      
      private function onRoomAd(param1:RoomAdMessageEvent) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:RoomAdMessageParser = param1.getParser();
         this.var_1459 = _loc2_.imageUrl;
         this.var_1891 = _loc2_.clickUrl;
         if(this.var_1459 != "" && this.var_1891 != "")
         {
            _loc3_ = this.var_1459;
            if(assets.hasAsset(_loc3_))
            {
               assets.removeAsset(assets.getAssetByName(_loc3_));
            }
            _loc4_ = new URLRequest(this.var_1459);
            _loc5_ = assets.loadAssetFromFile(_loc3_,_loc4_,"image/jpeg");
            _loc5_.addEventListener(AssetLoaderEvent.const_28,this.roomAdImageReady);
         }
      }
      
      private function roomAdImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         var _loc3_:Bitmap = _loc2_.assetLoader.content as Bitmap;
         if(this.isValidAdImage(_loc3_))
         {
            _loc4_ = this.emulateBackgroundTransparency(_loc3_.bitmapData);
            events.dispatchEvent(new AdEvent(AdEvent.const_430,0,0,_loc4_,this.var_1891,this.var_1203,this.var_1202));
         }
      }
      
      private function adWarningLeftReady(param1:AssetLoaderEvent) : void
      {
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         var _loc3_:Bitmap = _loc2_.assetLoader.content as Bitmap;
         if(_loc3_ != null)
         {
            this.var_1203 = this.emulateBackgroundTransparency(_loc3_.bitmapData);
         }
      }
      
      private function adWarningRightReady(param1:AssetLoaderEvent) : void
      {
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         var _loc3_:Bitmap = _loc2_.assetLoader.content as Bitmap;
         if(_loc3_ != null)
         {
            this.var_1202 = this.emulateBackgroundTransparency(_loc3_.bitmapData);
         }
      }
      
      private function emulateBackgroundTransparency(param1:BitmapData) : BitmapData
      {
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.height)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_.width)
            {
               _loc5_ = uint(param1.getPixel32(_loc4_,_loc3_));
               if(_loc5_ != 4294967295)
               {
                  _loc2_.setPixel32(_loc4_,_loc3_,_loc5_);
               }
               _loc4_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function isValidAdImage(param1:Bitmap) : Boolean
      {
         if(param1 != null && (param1.width > 1 || param1.height > 1))
         {
            return true;
         }
         return false;
      }
   }
}
