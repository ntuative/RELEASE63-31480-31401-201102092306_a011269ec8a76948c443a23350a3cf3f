package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_543:int = 0;
      
      public static const const_196:int = 1;
      
      public static const const_119:int = 2;
      
      public static const const_870:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1605:String;
      
      private var var_2036:int;
      
      private var var_1458:int;
      
      private var var_2037:int;
      
      private var var_2035:int;
      
      private var var_800:Array;
      
      private var var_2043:Array;
      
      private var var_2040:int;
      
      private var var_2042:Boolean;
      
      private var var_2041:Boolean;
      
      private var var_2039:Boolean;
      
      private var var_2038:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2042;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2042 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2041;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2041 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2039;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2039 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2038;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2038 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1605;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1605 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2036;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2036 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1458;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1458 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2037;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2037 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2035;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2035 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_800;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_800 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2043;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2043 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2040;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2040 = param1;
      }
   }
}
