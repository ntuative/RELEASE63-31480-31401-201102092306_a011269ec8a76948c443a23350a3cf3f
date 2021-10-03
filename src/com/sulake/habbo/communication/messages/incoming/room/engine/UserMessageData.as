package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_976:String = "M";
      
      public static const const_1486:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_167:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_264:int = 0;
      
      private var _name:String = "";
      
      private var var_2235:int = 0;
      
      private var var_900:String = "";
      
      private var var_536:String = "";
      
      private var var_2239:String = "";
      
      private var var_1996:int;
      
      private var var_1989:int = 0;
      
      private var var_2237:String = "";
      
      private var var_2236:int = 0;
      
      private var var_1987:int = 0;
      
      private var var_2238:String = "";
      
      private var var_169:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_169 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_169)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_264;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_264 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_169)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2235;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_2235 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_900;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_900 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_536 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2239;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_2239 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_1996;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_1996 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_1989;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_1989 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2237;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_2237 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2236;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_2236 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_1987;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_1987 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2238;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_2238 = param1;
         }
      }
   }
}
