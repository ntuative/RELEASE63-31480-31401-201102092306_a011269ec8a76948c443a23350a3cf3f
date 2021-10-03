package com.sulake.room
{
   import com.sulake.core.utils.Map;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.renderer.IRoomRendererBase;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class RoomInstance implements IRoomInstance
   {
       
      
      private var var_592:Dictionary;
      
      private var var_595:Dictionary;
      
      private var var_1355:Array;
      
      private var var_1354:Array;
      
      private var var_241:Map;
      
      private var var_547:Array;
      
      private var var_151:IRoomRendererBase;
      
      private var _container:IRoomInstanceContainer;
      
      private var _id:String;
      
      public function RoomInstance(param1:String, param2:IRoomInstanceContainer)
      {
         super();
         this.var_241 = new Map();
         this.var_547 = [];
         this._container = param2;
         this._id = param1;
         this.var_592 = new Dictionary();
         this.var_595 = new Dictionary();
         this.var_1355 = [];
         this.var_1354 = [];
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(this.var_241 != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.var_241.length)
            {
               _loc3_ = this.var_241.getWithIndex(_loc2_) as IRoomObjectManager;
               if(_loc3_ != null)
               {
                  _loc3_.dispose();
               }
               _loc2_++;
            }
            this.var_241.dispose();
            this.var_241 = null;
         }
         if(this.var_151 != null)
         {
            this.var_151.dispose();
            this.var_151 = null;
         }
         this._container = null;
         this.var_547 = null;
         if(this.var_592 != null)
         {
            for(_loc1_ in this.var_592)
            {
               delete this.var_592[_loc1_];
            }
            this.var_592 = null;
         }
         if(this.var_595 != null)
         {
            for(_loc1_ in this.var_595)
            {
               delete this.var_595[_loc1_];
            }
            this.var_595 = null;
         }
         this.var_1354 = [];
         this.var_1355 = [];
      }
      
      public function getNumber(param1:String) : Number
      {
         return this.var_592[param1];
      }
      
      public function setNumber(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(this.var_1355.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            this.var_1355.push(param1);
         }
         if(this.var_592[param1] != param2)
         {
            this.var_592[param1] = param2;
         }
      }
      
      public function getString(param1:String) : String
      {
         return this.var_595[param1];
      }
      
      public function setString(param1:String, param2:String, param3:Boolean = false) : void
      {
         if(this.var_1354.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            this.var_1354.push(param1);
         }
         if(this.var_595[param1] != param2)
         {
            this.var_595[param1] = param2;
         }
      }
      
      public function addObjectUpdateCategory(param1:int) : void
      {
         var _loc2_:int = this.var_547.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return;
         }
         this.var_547.push(param1);
      }
      
      public function removeObjectUpdateCategory(param1:int) : void
      {
         var _loc2_:int = this.var_547.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.var_547.splice(_loc2_,1);
         }
      }
      
      public function update() : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc1_:int = getTimer();
         var _loc2_:int = this.var_547.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = int(this.var_547[_loc2_]);
            _loc4_ = this.getObjectManager(_loc3_);
            if(_loc4_ != null)
            {
               _loc5_ = _loc4_.getObjectCount() - 1;
               while(_loc5_ >= 0)
               {
                  _loc6_ = _loc4_.getObjectWithIndex(_loc5_);
                  if(_loc6_ != null)
                  {
                     _loc7_ = _loc6_.getEventHandler();
                     if(_loc7_ != null)
                     {
                        _loc7_.update(_loc1_);
                     }
                  }
                  _loc5_--;
               }
            }
            _loc2_--;
         }
      }
      
      public function createRoomObject(param1:int, param2:String, param3:int) : IRoomObject
      {
         if(this._container != null)
         {
            return this._container.createRoomObject(this._id,param1,param2,param3);
         }
         return null;
      }
      
      public function createObjectInternal(param1:int, param2:int, param3:int) : IRoomObject
      {
         var _loc5_:* = null;
         var _loc4_:IRoomObjectManager = this.createObjectManager(param3);
         if(_loc4_ != null)
         {
            _loc5_ = _loc4_.createObject(param1,param2);
            if(this.var_151 != null)
            {
               this.var_151.feedRoomObject(_loc5_);
            }
            return _loc5_;
         }
         return null;
      }
      
      public function getObject(param1:int, param2:int) : IRoomObject
      {
         var _loc3_:IRoomObjectManager = this.getObjectManager(param2);
         if(_loc3_ != null)
         {
            return _loc3_.getObject(param1);
         }
         return null;
      }
      
      public function getObjectWithIndex(param1:int, param2:int) : IRoomObject
      {
         var _loc3_:IRoomObjectManager = this.getObjectManager(param2);
         if(_loc3_ != null)
         {
            return _loc3_.getObjectWithIndex(param1);
         }
         return null;
      }
      
      public function getObjectCount(param1:int) : int
      {
         var _loc2_:IRoomObjectManager = this.getObjectManager(param1);
         if(_loc2_ != null)
         {
            return _loc2_.getObjectCount();
         }
         return -1;
      }
      
      public function disposeObject(param1:int, param2:int) : Boolean
      {
         var _loc4_:* = null;
         var _loc3_:IRoomObjectManager = this.getObjectManager(param2);
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.getObject(param1);
            if(_loc4_ != null)
            {
               if(this.var_151)
               {
                  this.var_151.removeRoomObject(_loc4_.getInstanceId());
               }
               return _loc3_.disposeObject(param1);
            }
         }
         return false;
      }
      
      public function disposeObjects(param1:int) : int
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc2_:int = -1;
         var _loc3_:IRoomObjectManager = this.getObjectManager(param1);
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_.getObjectCount();
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = _loc3_.getObjectWithIndex(_loc4_) as IRoomObjectController;
               if(_loc5_ != null)
               {
                  _loc6_ = _loc5_.getInstanceId();
                  _loc5_.dispose();
                  if(this.var_151)
                  {
                     this.var_151.removeRoomObject(_loc6_);
                  }
               }
               _loc4_++;
            }
            _loc3_.reset();
         }
         return _loc2_;
      }
      
      public function setRenderer(param1:IRoomRendererBase) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(param1 == this.var_151)
         {
            return;
         }
         if(this.var_151 != null)
         {
            this.var_151.dispose();
         }
         this.var_151 = param1;
         if(this.var_151 == null)
         {
            return;
         }
         this.var_151.reset();
         var _loc2_:Array = this.getObjectManagerIds();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = int(_loc2_[_loc3_]);
            _loc5_ = this.getObjectCount(_loc4_);
            _loc6_ = _loc5_ - 1;
            while(_loc6_ >= 0)
            {
               _loc7_ = this.getObjectWithIndex(_loc6_,_loc4_) as IRoomObjectController;
               if(_loc7_ != null)
               {
                  this.var_151.feedRoomObject(_loc7_);
               }
               _loc6_--;
            }
            _loc3_--;
         }
      }
      
      public function getRenderer() : IRoomRendererBase
      {
         return this.var_151;
      }
      
      public function getObjectManagerIds() : Array
      {
         return this.var_241.getKeys();
      }
      
      protected function createObjectManager(param1:int) : IRoomObjectManager
      {
         var _loc2_:String = String(param1);
         if(this.var_241.getValue(_loc2_) != null)
         {
            return this.var_241.getValue(_loc2_) as IRoomObjectManager;
         }
         if(this._container == null)
         {
            return null;
         }
         var _loc3_:IRoomObjectManager = this._container.createRoomObjectManager();
         if(_loc3_ != null)
         {
            this.var_241.add(_loc2_,_loc3_);
         }
         return _loc3_;
      }
      
      protected function getObjectManager(param1:int) : IRoomObjectManager
      {
         return this.var_241.getValue(String(param1)) as IRoomObjectManager;
      }
      
      protected function disposeObjectManager(param1:int) : Boolean
      {
         var _loc3_:* = null;
         var _loc2_:String = String(param1);
         this.disposeObjects(param1);
         if(this.var_241.getValue(_loc2_) != null)
         {
            _loc3_ = this.var_241.remove(_loc2_) as IRoomObjectManager;
            if(_loc3_ != null)
            {
               _loc3_.dispose();
            }
            return true;
         }
         return false;
      }
   }
}