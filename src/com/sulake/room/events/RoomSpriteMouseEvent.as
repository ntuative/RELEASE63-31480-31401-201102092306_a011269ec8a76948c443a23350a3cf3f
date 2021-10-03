package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1790:String = "";
      
      private var var_1630:String = "";
      
      private var var_2106:String = "";
      
      private var var_2464:Number = 0;
      
      private var var_2466:Number = 0;
      
      private var var_2460:Number = 0;
      
      private var var_2467:Number = 0;
      
      private var var_2465:Boolean = false;
      
      private var var_2462:Boolean = false;
      
      private var var_2463:Boolean = false;
      
      private var var_2461:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1790 = param2;
         this.var_1630 = param3;
         this.var_2106 = param4;
         this.var_2464 = param5;
         this.var_2466 = param6;
         this.var_2460 = param7;
         this.var_2467 = param8;
         this.var_2465 = param9;
         this.var_2462 = param10;
         this.var_2463 = param11;
         this.var_2461 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1790;
      }
      
      public function get canvasId() : String
      {
         return this.var_1630;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2106;
      }
      
      public function get screenX() : Number
      {
         return this.var_2464;
      }
      
      public function get screenY() : Number
      {
         return this.var_2466;
      }
      
      public function get localX() : Number
      {
         return this.var_2460;
      }
      
      public function get localY() : Number
      {
         return this.var_2467;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2465;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2462;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2463;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2461;
      }
   }
}
