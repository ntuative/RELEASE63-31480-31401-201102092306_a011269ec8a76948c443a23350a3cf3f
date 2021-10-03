package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1000:int = 0;
       
      
      private var _id:int;
      
      private var _type:String = "";
      
      private var var_77:Vector3d;
      
      private var var_264:Vector3d;
      
      private var var_1761:Vector3d;
      
      private var var_1760:Vector3d;
      
      private var var_607:Array;
      
      private var var_65:RoomObjectModel;
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_606:IRoomObjectEventHandler;
      
      private var _updateID:int;
      
      private var _instanceId:int = 0;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         this._id = param1;
         this.var_77 = new Vector3d();
         this.var_264 = new Vector3d();
         this.var_1761 = new Vector3d();
         this.var_1760 = new Vector3d();
         this.var_607 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            this.var_607[_loc3_] = 0;
            _loc3_--;
         }
         this.var_65 = new RoomObjectModel();
         this._visualization = null;
         this.var_606 = null;
         this._updateID = 0;
         this._instanceId = var_1000++;
      }
      
      public function dispose() : void
      {
         this.var_77 = null;
         this.var_264 = null;
         if(this.var_65 != null)
         {
            this.var_65.dispose();
            this.var_65 = null;
         }
         this.var_607 = null;
         this.setVisualization(null);
         this.setEventHandler(null);
      }
      
      public function getId() : int
      {
         return this._id;
      }
      
      public function getType() : String
      {
         return this._type;
      }
      
      public function getInstanceId() : int
      {
         return this._instanceId;
      }
      
      public function getLocation() : IVector3d
      {
         this.var_1761.assign(this.var_77);
         return this.var_1761;
      }
      
      public function getDirection() : IVector3d
      {
         this.var_1760.assign(this.var_264);
         return this.var_1760;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return this.var_65;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return this.var_65;
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.var_607.length)
         {
            return this.var_607[param1];
         }
         return -1;
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return this._visualization;
      }
      
      public function setType(param1:String) : void
      {
         this._type = param1;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_77.x != param1.x || this.var_77.y != param1.y || this.var_77.z != param1.z)
         {
            this.var_77.x = param1.x;
            this.var_77.y = param1.y;
            this.var_77.z = param1.z;
            ++this._updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_264.x != param1.x || this.var_264.y != param1.y || this.var_264.z != param1.z)
         {
            this.var_264.x = (param1.x % 360 + 360) % 360;
            this.var_264.y = (param1.y % 360 + 360) % 360;
            this.var_264.z = (param1.z % 360 + 360) % 360;
            ++this._updateID;
         }
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < this.var_607.length)
         {
            if(this.var_607[param2] != param1)
            {
               this.var_607[param2] = param1;
               ++this._updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != this._visualization)
         {
            if(this._visualization != null)
            {
               this._visualization.dispose();
            }
            this._visualization = param1;
            if(this._visualization != null)
            {
               this._visualization.object = this;
            }
         }
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == this.var_606)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = this.var_606;
         if(_loc2_ != null)
         {
            this.var_606 = null;
            _loc2_.object = null;
         }
         this.var_606 = param1;
         if(this.var_606 != null)
         {
            this.var_606.object = this;
         }
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return this.var_606;
      }
      
      public function getUpdateID() : int
      {
         return this._updateID;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return this.getEventHandler();
      }
   }
}
