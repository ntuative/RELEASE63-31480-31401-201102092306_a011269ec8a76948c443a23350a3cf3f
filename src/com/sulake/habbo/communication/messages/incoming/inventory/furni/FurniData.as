package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2271:int;
      
      private var var_1432:String;
      
      private var _objId:int;
      
      private var var_1685:int;
      
      private var _category:int;
      
      private var var_1967:String;
      
      private var var_2270:Boolean;
      
      private var var_2273:Boolean;
      
      private var var_2269:Boolean;
      
      private var var_2082:Boolean;
      
      private var var_2272:int;
      
      private var var_1390:int;
      
      private var var_1493:String = "";
      
      private var var_2170:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2271 = param1;
         this.var_1432 = param2;
         this._objId = param3;
         this.var_1685 = param4;
         this._category = param5;
         this.var_1967 = param6;
         this.var_2270 = param7;
         this.var_2273 = param8;
         this.var_2269 = param9;
         this.var_2082 = param10;
         this.var_2272 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1493 = param1;
         this.var_1390 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2271;
      }
      
      public function get itemType() : String
      {
         return this.var_1432;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1685;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1967;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2270;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2273;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2269;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2082;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2272;
      }
      
      public function get slotId() : String
      {
         return this.var_1493;
      }
      
      public function get songId() : int
      {
         return this.var_2170;
      }
      
      public function get extra() : int
      {
         return this.var_1390;
      }
   }
}
