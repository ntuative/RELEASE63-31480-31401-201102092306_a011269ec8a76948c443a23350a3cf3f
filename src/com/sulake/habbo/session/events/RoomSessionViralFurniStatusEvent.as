package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_475:String = "RSVFS_STATUS";
      
      public static const const_541:String = "RSVFS_RECEIVED";
       
      
      private var var_170:String;
      
      private var _objectId:int;
      
      private var var_372:int = -1;
      
      private var var_1071:String;
      
      private var var_2027:String;
      
      private var var_2029:Boolean;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_372 = this.status;
         this.var_1071 = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get status() : int
      {
         return this.var_372;
      }
      
      public function get shareId() : String
      {
         return this.var_1071;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2027;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2029;
      }
      
      public function set objectId(param1:int) : void
      {
         this._objectId = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_372 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this.var_1071 = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2027 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2029 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_170;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_170 = param1;
      }
   }
}
