package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_167:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_2592:Number = 0;
      
      private var var_2591:Number = 0;
      
      private var var_2594:Number = 0;
      
      private var var_2595:Number = 0;
      
      private var var_264:int = 0;
      
      private var var_2577:int = 0;
      
      private var var_309:Array;
      
      private var var_2593:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_309 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_167 = param3;
         this.var_166 = param4;
         this.var_2592 = param5;
         this.var_264 = param6;
         this.var_2577 = param7;
         this.var_2591 = param8;
         this.var_2594 = param9;
         this.var_2595 = param10;
         this.var_2593 = param11;
         this.var_309 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_167;
      }
      
      public function get z() : Number
      {
         return this.var_166;
      }
      
      public function get localZ() : Number
      {
         return this.var_2592;
      }
      
      public function get targetX() : Number
      {
         return this.var_2591;
      }
      
      public function get targetY() : Number
      {
         return this.var_2594;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2595;
      }
      
      public function get dir() : int
      {
         return this.var_264;
      }
      
      public function get dirHead() : int
      {
         return this.var_2577;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2593;
      }
      
      public function get actions() : Array
      {
         return this.var_309.slice();
      }
   }
}
