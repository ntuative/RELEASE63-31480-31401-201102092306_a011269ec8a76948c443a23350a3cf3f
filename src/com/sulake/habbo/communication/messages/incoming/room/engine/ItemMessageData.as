package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2486:Boolean = false;
      
      private var var_2484:int = 0;
      
      private var var_2485:int = 0;
      
      private var var_2460:int = 0;
      
      private var var_2467:int = 0;
      
      private var var_167:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_264:String = "";
      
      private var _type:int = 0;
      
      private var var_2797:String = "";
      
      private var var_1390:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_169:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2486 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_169 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2486;
      }
      
      public function get wallX() : Number
      {
         return this.var_2484;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_169)
         {
            this.var_2484 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2485;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_169)
         {
            this.var_2485 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2460;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_169)
         {
            this.var_2460 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2467;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_169)
         {
            this.var_2467 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_167;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_169)
         {
            this.var_167 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_166;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_169)
         {
            this.var_166 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_264;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_264 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_169)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_169)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_169)
         {
            this._data = param1;
         }
      }
   }
}
