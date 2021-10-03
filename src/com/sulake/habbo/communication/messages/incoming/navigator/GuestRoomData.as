package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_344:int;
      
      private var var_668:Boolean;
      
      private var var_932:String;
      
      private var _ownerName:String;
      
      private var var_2036:int;
      
      private var var_2161:int;
      
      private var var_2362:int;
      
      private var var_1605:String;
      
      private var var_2363:int;
      
      private var var_2364:Boolean;
      
      private var var_712:int;
      
      private var var_1458:int;
      
      private var var_2365:String;
      
      private var var_800:Array;
      
      private var var_2366:RoomThumbnailData;
      
      private var var_2042:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_800 = new Array();
         super();
         this.var_344 = param1.readInteger();
         this.var_668 = param1.readBoolean();
         this.var_932 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2036 = param1.readInteger();
         this.var_2161 = param1.readInteger();
         this.var_2362 = param1.readInteger();
         this.var_1605 = param1.readString();
         this.var_2363 = param1.readInteger();
         this.var_2364 = param1.readBoolean();
         this.var_712 = param1.readInteger();
         this.var_1458 = param1.readInteger();
         this.var_2365 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_800.push(_loc4_);
            _loc3_++;
         }
         this.var_2366 = new RoomThumbnailData(param1);
         this.var_2042 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_800 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_344;
      }
      
      public function get event() : Boolean
      {
         return this.var_668;
      }
      
      public function get roomName() : String
      {
         return this.var_932;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2036;
      }
      
      public function get userCount() : int
      {
         return this.var_2161;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2362;
      }
      
      public function get description() : String
      {
         return this.var_1605;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2363;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2364;
      }
      
      public function get score() : int
      {
         return this.var_712;
      }
      
      public function get categoryId() : int
      {
         return this.var_1458;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2365;
      }
      
      public function get tags() : Array
      {
         return this.var_800;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2366;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2042;
      }
   }
}
