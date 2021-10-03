package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.room.events.RoomObjectStateChangeEvent;
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectItemDataUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.logic.MovingObjectLogic;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import com.sulake.room.utils.XMLValidator;
   import flash.events.MouseEvent;
   
   public class FurnitureLogic extends MovingObjectLogic
   {
       
      
      private var var_1184:Boolean = false;
      
      private var var_448:Number = 0.0;
      
      private var var_538:Number = 0.0;
      
      private var var_1447:Number = 0.0;
      
      private var var_2244:Number = 0.0;
      
      private var var_2245:Number = 0.0;
      
      private var var_1862:Number = 0.0;
      
      private var var_263:Array;
      
      public function FurnitureLogic()
      {
         this.var_263 = [];
         super();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_263 = null;
      }
      
      override public function initialize(param1:XML) : void
      {
         var _loc7_:* = null;
         var _loc8_:int = 0;
         if(param1 == null)
         {
            return;
         }
         this.var_448 = 0;
         this.var_538 = 0;
         this.var_1447 = 0;
         this.var_263 = [];
         var _loc2_:XMLList = param1.model.dimensions;
         if(_loc2_.length() == 0)
         {
            return;
         }
         var _loc3_:XMLList = _loc2_.@x;
         if(_loc3_.length() == 1)
         {
            this.var_448 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@y;
         if(_loc3_.length() == 1)
         {
            this.var_538 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@z;
         if(_loc3_.length() == 1)
         {
            this.var_1447 = Number(_loc3_);
         }
         this.var_2244 = this.var_448 / 2;
         this.var_2245 = this.var_538 / 2;
         _loc3_ = _loc2_.@centerZ;
         if(_loc3_.length() == 1)
         {
            this.var_1862 = Number(_loc3_);
         }
         else
         {
            this.var_1862 = this.var_1447 / 2;
         }
         var _loc4_:XMLList = param1.model.directions.direction;
         var _loc5_:* = ["id"];
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length())
         {
            _loc7_ = _loc4_[_loc6_];
            if(XMLValidator.checkRequiredAttributes(_loc7_,_loc5_))
            {
               _loc8_ = parseInt(_loc7_.@id);
               this.var_263.push(_loc8_);
            }
            _loc6_++;
         }
         this.var_263.sort(Array.NUMERIC);
         if(object == null || object.getModelController() == null)
         {
            return;
         }
         object.getModelController().setNumber(RoomObjectVariableEnum.const_308,this.var_448,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_371,this.var_538,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_708,this.var_1447,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1633,this.var_2244,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1618,this.var_2245,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1206,this.var_1862,true);
         object.getModelController().setNumberArray(RoomObjectVariableEnum.const_746,this.var_263,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_309,1);
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(object == null)
         {
            return;
         }
         var _loc3_:IRoomObjectModelController = object.getModel() as IRoomObjectModelController;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc9_:String = _loc3_.getString(RoomObjectVariableEnum.const_360);
         switch(param1.type)
         {
            case MouseEvent.ROLL_OVER:
               if(!this.var_1184)
               {
                  _loc6_ = object.getId();
                  _loc7_ = object.getType();
                  if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
                  {
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_352,_loc6_,_loc7_));
                  }
                  this.var_1184 = true;
               }
               break;
            case MouseEvent.ROLL_OUT:
               if(this.var_1184)
               {
                  _loc6_ = object.getId();
                  _loc7_ = object.getType();
                  if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
                  {
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_340,_loc6_,_loc7_));
                  }
                  this.var_1184 = false;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_421,_loc6_,_loc7_));
               }
               if(eventDispatcher != null)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectStateChangeEvent(RoomObjectStateChangeEvent.const_140,_loc6_,_loc7_));
               }
               break;
            case MouseEvent.CLICK:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc8_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_216,param1.eventId,_loc6_,_loc7_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc8_);
               }
               if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_307,_loc6_,_loc7_));
               }
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc8_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_500,param1.eventId,_loc6_,_loc7_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc8_);
               }
         }
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc2_:IRoomObjectModelController = object.getModelController();
         var _loc3_:RoomObjectDataUpdateMessage = param1 as RoomObjectDataUpdateMessage;
         if(_loc3_ != null)
         {
            object.setState(_loc3_.state,0);
            if(_loc2_ != null)
            {
               _loc2_.setString(RoomObjectVariableEnum.const_97,_loc3_.data);
               if(!isNaN(_loc3_.extra))
               {
                  _loc2_.setString(RoomObjectVariableEnum.const_498,String(_loc3_.extra));
               }
               _loc2_.setNumber(RoomObjectVariableEnum.const_841,lastUpdateTime);
            }
            return;
         }
         var _loc4_:RoomObjectItemDataUpdateMessage = param1 as RoomObjectItemDataUpdateMessage;
         if(_loc4_ != null)
         {
            if(_loc2_ != null)
            {
               _loc2_.setString(RoomObjectVariableEnum.const_1074,_loc4_.itemData);
            }
            return;
         }
         this.var_1184 = false;
         super.processUpdateMessage(param1);
      }
   }
}
