package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_900:String = "";
      
      private var var_536:String = "";
      
      private var var_2239:String = "";
      
      private var var_1996:int;
      
      private var var_1989:int = 0;
      
      private var var_2237:String = "";
      
      private var var_2236:int = 0;
      
      private var var_1987:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1996;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1996 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_900;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_900 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_536 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2239;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2239 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_1989;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_1989 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2237;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2237 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2236;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2236 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_1987;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_1987 = param1;
      }
   }
}
