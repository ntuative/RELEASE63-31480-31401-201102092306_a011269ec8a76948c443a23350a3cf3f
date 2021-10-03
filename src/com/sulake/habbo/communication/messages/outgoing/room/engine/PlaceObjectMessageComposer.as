package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var _objectId:int;
      
      private var var_2457:int;
      
      private var var_2609:String;
      
      private var _x:int = 0;
      
      private var var_167:int = 0;
      
      private var var_264:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this._objectId = param1;
         this.var_2457 = param2;
         this.var_2609 = param3;
         this._x = param4;
         this.var_167 = param5;
         this.var_264 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2457)
         {
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
               return [this._objectId + " " + this._x + " " + this.var_167 + " " + this.var_264];
            case RoomObjectCategoryEnum.const_27:
               return [this._objectId + " " + this.var_2609];
            default:
               return [];
         }
      }
   }
}
