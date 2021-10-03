package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_452:String = "RWTDUE_TEASER_DATA";
      
      public static const const_800:String = "RWTDUE_GIFT_DATA";
      
      public static const const_718:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var _objectId:int;
      
      private var _data:String;
      
      private var var_372:int;
      
      private var var_170:String;
      
      private var var_2027:String;
      
      private var var_2029:Boolean;
      
      private var var_2028:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_372;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2027;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2029;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2028;
      }
      
      public function set status(param1:int) : void
      {
         this.var_372 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2027 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2029 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2028 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this._objectId = param1;
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
