package com.sulake.core.runtime
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.AssetLibraryCollection;
   import com.sulake.core.runtime.events.LibraryProgressEvent;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.utils.LibraryLoader;
   import com.sulake.core.utils.LibraryLoaderEvent;
   import com.sulake.core.utils.LibraryLoaderQueue;
   import com.sulake.core.utils.profiler.ProfilerViewer;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   public final class CoreComponentContext extends ComponentContext implements ICore
   {
      
      private static const const_148:uint = 3;
      
      private static const const_1293:String = "asset-libraries";
      
      private static const const_1299:String = "library";
      
      private static const const_1300:String = "service-libraries";
      
      private static const const_1297:String = "library";
      
      private static const const_1295:String = "component-libraries";
      
      private static const const_1294:String = "library";
      
      private static const const_1298:String = "error_data";
      
      private static const const_1296:String = "error_cat";
      
      private static const const_1292:String = "error_desc";
       
      
      private var var_340:LibraryLoaderQueue;
      
      private var var_730:IEventDispatcher;
      
      private var var_483:uint;
      
      private var var_481:Function;
      
      private var var_246:Profiler;
      
      private var var_482:Array;
      
      private var var_600:Array;
      
      private var var_1715:uint;
      
      private var var_1476:uint = 0;
      
      public function CoreComponentContext(param1:DisplayObjectContainer, param2:uint)
      {
         super(this,Component.COMPONENT_FLAG_CONTEXT,new AssetLibraryCollection("_core_assets"));
         this.var_1476 = param2;
         _debug = (param2 & 0) == Core.CORE_SETUP_DEBUG;
         this.var_482 = new Array();
         this.var_600 = new Array();
         var_435 = param1;
         var _loc3_:int = 0;
         while(_loc3_ < CoreComponentContext.const_148)
         {
            this.var_482.push(new Array());
            this.var_600.push(0);
            _loc3_++;
         }
         this.var_1715 = getTimer();
         attachComponent(this,[new IIDCore()]);
         var_435.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         switch(param2 & 0)
         {
            case Core.const_980:
               debug("Core; using simple frame update handler");
               this.var_481 = this.simpleFrameUpdateHandler;
               break;
            case Core.const_654:
               debug("Core; using complex frame update handler");
               this.var_481 = this.complexFrameUpdateHandler;
               break;
            case Core.const_1393:
               debug("Core; using profiler frame update handler");
               this.var_481 = this.profilerFrameUpdateHandler;
               this.var_246 = new Profiler(this);
               attachComponent(this.var_246,[new IIDProfiler()]);
               var_435.addChild(new ProfilerViewer(this.var_246));
               break;
            case Core.CORE_SETUP_DEBUG:
               debug("Core; using debug frame update handler");
               this.var_481 = this.debugFrameUpdateHandler;
         }
      }
      
      public function getNumberOfFilesPending() : uint
      {
         return this.var_340.length;
      }
      
      public function getNumberOfFilesLoaded() : uint
      {
         return this.var_483 - this.getNumberOfFilesPending();
      }
      
      public function initialize() : void
      {
         events.dispatchEvent(new Event(Component.COMPONENT_EVENT_RUNNING));
         Logger.log(toXMLString());
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(!disposed)
         {
            debug("Disposing core");
            var_435.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            var_435 = null;
            _loc3_ = 0;
            while(_loc3_ < CoreComponentContext.const_148)
            {
               _loc2_ = this.var_482[_loc3_] as Array;
               _loc1_ = uint(_loc2_.length);
               while(_loc1_-- > 0)
               {
                  _loc2_.pop();
               }
               _loc3_++;
            }
            if(this.var_340 != null)
            {
               this.var_340.dispose();
               this.var_340 = null;
            }
            super.dispose();
         }
      }
      
      override public function error(param1:String, param2:Boolean, param3:int = -1, param4:Error = null) : void
      {
         if(param4)
         {
            ErrorReportStorage.setParameter(const_1298,String(param4.getStackTrace()));
         }
         ErrorReportStorage.setParameter(const_1296,String(param3));
         ErrorReportStorage.setParameter(const_1292,param1);
         super.error(param1,param2,param3,param4);
         if(param2)
         {
            this.dispose();
         }
      }
      
      public function readConfigDocument(param1:XML, param2:IEventDispatcher = null) : void
      {
         var node:XML = null;
         var list:XMLList = null;
         var item:XML = null;
         var url:String = null;
         var loader:LibraryLoader = null;
         var config:XML = param1;
         var loadingEventDelegate:IEventDispatcher = param2;
         var context:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain,null);
         debug("Parsing config document");
         this.var_730 = loadingEventDelegate;
         if(this.var_340 == null)
         {
            this.var_340 = new LibraryLoaderQueue(_debug);
         }
         try
         {
            node = config.child(const_1293)[0];
            if(node != null)
            {
               list = node.child(const_1299);
               for each(item in list)
               {
                  url = item.attribute("url").toString();
                  loader = new LibraryLoader(context,true,_debug);
                  assets.loadFromFile(loader,true);
                  loader.load(new URLRequest(url));
                  this.var_340.push(loader);
                  loader.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,this.updateLoadingProcess);
                  loader.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,this.errorInLoadingProcess);
                  ++this.var_483;
               }
            }
         }
         catch(e:Error)
         {
            error("Failed to parse asset libraries from config xml!",true,Core.const_301,e);
         }
         try
         {
            node = config.child(const_1300)[0];
            if(node != null)
            {
               list = node.child(const_1297);
               for each(item in list)
               {
                  url = item.attribute("url").toString();
                  loader = new LibraryLoader(context,true,_debug);
                  loader.load(new URLRequest(url));
                  this.var_340.push(loader);
                  loader.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,this.updateLoadingProcess);
                  loader.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,this.errorInLoadingProcess);
                  ++this.var_483;
               }
            }
         }
         catch(e:Error)
         {
            error("Failed to parse interfaces from config xml!",true,Core.const_301,e);
         }
         try
         {
            node = config.child(const_1295)[0];
            if(node != null)
            {
               list = node.child(const_1294);
               for each(item in list)
               {
                  url = item.attribute("url").toString();
                  loader = new LibraryLoader(context,true,_debug);
                  loader.load(new URLRequest(url));
                  this.var_340.push(loader);
                  loader.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,this.updateLoadingProcess);
                  loader.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,this.errorInLoadingProcess);
                  ++this.var_483;
               }
            }
         }
         catch(e:Error)
         {
            error("Failed to parse components from config xml!",true,Core.const_301,e);
         }
         if(!disposed)
         {
            this.updateLoadingProcess();
         }
      }
      
      private function errorInLoadingProcess(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:LibraryLoader = LibraryLoader(param1.target);
         this.error("Failed to download library \"" + _loc2_.url + "\" HTTP status " + param1.status + ": " + _loc2_.getLastErrorMessage(),true,Core.const_1642);
         if(!disposed)
         {
            this.updateLoadingProcess(param1);
         }
      }
      
      private function finalizeLoadingEventDelegate() : void
      {
         if(this.var_730)
         {
            this.var_730.dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function updateLoadingProgress(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:* = null;
         if(this.var_730)
         {
            _loc2_ = param1.target as LibraryLoader;
            this.var_730.dispatchEvent(new LibraryProgressEvent(_loc2_.url,param1.bytesLoaded,param1.bytesTotal,_loc2_.elapsedTime));
         }
      }
      
      private function updateLoadingProcess(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 != null)
         {
            if(param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE || param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR)
            {
               _loc2_ = param1.target as LibraryLoader;
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,this.updateLoadingProcess);
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,this.errorInLoadingProcess);
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,this.updateLoadingProgress);
               _loc3_ = _loc2_.url;
               debug("Loading library \"" + _loc3_ + "\" " + (param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE ? "ready" : "failed\n" + _loc2_.getLastErrorMessage()));
               _loc2_.dispose();
               if(!disposed)
               {
                  if(this.var_730)
                  {
                     this.var_730.dispatchEvent(new LibraryProgressEvent(_loc2_.url,this.var_483 - this.var_340.length,this.var_483,_loc2_.elapsedTime));
                  }
               }
            }
         }
         if(!disposed)
         {
            if(this.var_340.length == 0)
            {
               this.finalizeLoadingEventDelegate();
               debug("All libraries loaded, Core is now running");
            }
         }
      }
      
      override public function registerUpdateReceiver(param1:IUpdateReceiver, param2:uint) : void
      {
         this.removeUpdateReceiver(param1);
         param2 = param2 >= CoreComponentContext.const_148 ? 4294967295 : uint(param2);
         var _loc3_:Array = this.var_482[param2] as Array;
         _loc3_.push(param1);
      }
      
      override public function removeUpdateReceiver(param1:IUpdateReceiver) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         while(_loc4_ < CoreComponentContext.const_148)
         {
            _loc3_ = this.var_482[_loc4_] as Array;
            _loc2_ = _loc3_.indexOf(param1);
            if(_loc2_ > -1)
            {
               _loc3_[_loc2_] = null;
               return;
            }
            _loc4_++;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:uint = getTimer();
         this.var_481(_loc2_,_loc2_ - this.var_1715);
         this.var_1715 = _loc2_;
      }
      
      private function simpleFrameUpdateHandler(param1:uint, param2:uint) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var msCurrentTime:uint = param1;
         var msSinceLastUpdate:uint = param2;
         criticality = 0;
         while(criticality < CoreComponentContext.const_148)
         {
            this.var_600[criticality] = 0;
            receivers = this.var_482[criticality];
            index = 0;
            length = receivers.length;
            while(index != length)
            {
               receiver = IUpdateReceiver(receivers[index]);
               if(receiver == null || receiver.disposed)
               {
                  receivers.splice(index,1);
                  length--;
               }
               else
               {
                  try
                  {
                     receiver.update(msSinceLastUpdate);
                  }
                  catch(e:Error)
                  {
                     error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                     return;
                  }
                  index++;
               }
            }
            criticality++;
         }
      }
      
      private function complexFrameUpdateHandler(param1:uint, param2:uint) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var skip:Boolean = false;
         var t:uint = 0;
         var msCurrentTime:uint = param1;
         var msSinceLastUpdate:uint = param2;
         var maxTimePerFrame:uint = 1000 / var_435.stage.frameRate;
         criticality = 0;
         while(criticality < CoreComponentContext.const_148)
         {
            t = getTimer();
            skip = false;
            if(t - msCurrentTime > maxTimePerFrame)
            {
               if(this.var_600[criticality] < criticality)
               {
                  ++this.var_600[criticality];
                  skip = true;
               }
            }
            if(!skip)
            {
               this.var_600[criticality] = 0;
               receivers = this.var_482[criticality];
               index = 0;
               length = receivers.length;
               while(index != length)
               {
                  receiver = IUpdateReceiver(receivers[index]);
                  if(receiver == null || receiver.disposed)
                  {
                     receivers.splice(index,1);
                     length--;
                  }
                  else
                  {
                     try
                     {
                        receiver.update(msSinceLastUpdate);
                     }
                     catch(e:Error)
                     {
                        error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                        return;
                     }
                     index++;
                  }
               }
            }
            criticality++;
         }
      }
      
      private function profilerFrameUpdateHandler(param1:uint, param2:uint) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var msCurrentTime:uint = param1;
         var msSinceLastUpdate:uint = param2;
         this.var_246.start();
         criticality = 0;
         while(criticality < CoreComponentContext.const_148)
         {
            this.var_600[criticality] = 0;
            receivers = this.var_482[criticality];
            index = 0;
            length = receivers.length;
            while(index != length)
            {
               receiver = IUpdateReceiver(receivers[index]);
               if(receiver == null || receiver.disposed)
               {
                  receivers.splice(index,1);
                  length--;
               }
               else
               {
                  try
                  {
                     this.var_246.update(receiver,msSinceLastUpdate);
                  }
                  catch(e:Error)
                  {
                     error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                     return;
                  }
                  index++;
               }
            }
            criticality++;
         }
         this.var_246.stop();
      }
      
      private function debugFrameUpdateHandler(param1:uint, param2:uint) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < CoreComponentContext.const_148)
         {
            this.var_600[_loc3_] = 0;
            _loc4_ = this.var_482[_loc3_];
            _loc7_ = 0;
            _loc6_ = uint(_loc4_.length);
            while(_loc7_ != _loc6_)
            {
               _loc5_ = IUpdateReceiver(_loc4_[_loc7_]);
               if(_loc5_ == null || _loc5_.disposed)
               {
                  _loc4_.splice(_loc7_,1);
                  _loc6_--;
               }
               else
               {
                  _loc5_.update(param2);
                  _loc7_++;
               }
            }
            _loc3_++;
         }
      }
      
      public function setProfilerMode(param1:Boolean) : void
      {
         if(param1)
         {
            this.var_481 = this.profilerFrameUpdateHandler;
            if(!this.var_246)
            {
               this.var_246 = new Profiler(this);
               attachComponent(this.var_246,[new IIDProfiler()]);
            }
         }
         else
         {
            if(this.var_246)
            {
               detachComponent(this.var_246);
               this.var_246.dispose();
               this.var_246 = null;
            }
            switch(this.var_1476 & 0)
            {
               case Core.const_980:
                  this.var_481 = this.simpleFrameUpdateHandler;
                  break;
               case Core.const_654:
                  this.var_481 = this.complexFrameUpdateHandler;
                  break;
               default:
                  this.var_481 = this.debugFrameUpdateHandler;
            }
         }
      }
   }
}
