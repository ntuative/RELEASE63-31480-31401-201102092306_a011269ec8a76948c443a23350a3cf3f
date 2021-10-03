package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1126:Boolean;
      
      private var var_2679:int;
      
      private var var_2681:String;
      
      private var var_344:int;
      
      private var var_2680:int;
      
      private var var_2411:String;
      
      private var var_2678:String;
      
      private var var_2677:String;
      
      private var var_800:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_800 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1126 = false;
            return;
         }
         this.var_1126 = true;
         this.var_2679 = int(_loc2_);
         this.var_2681 = param1.readString();
         this.var_344 = int(param1.readString());
         this.var_2680 = param1.readInteger();
         this.var_2411 = param1.readString();
         this.var_2678 = param1.readString();
         this.var_2677 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_800.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2679;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2681;
      }
      
      public function get flatId() : int
      {
         return this.var_344;
      }
      
      public function get eventType() : int
      {
         return this.var_2680;
      }
      
      public function get eventName() : String
      {
         return this.var_2411;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2678;
      }
      
      public function get creationTime() : String
      {
         return this.var_2677;
      }
      
      public function get tags() : Array
      {
         return this.var_800;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1126;
      }
   }
}
