package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1565:int;
      
      private var _name:String;
      
      private var var_1332:int;
      
      private var var_2130:int;
      
      private var var_2133:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_536:String;
      
      private var var_2129:int;
      
      private var var_2134:int;
      
      private var var_2131:int;
      
      private var var_2132:int;
      
      private var var_2128:int;
      
      private var _ownerName:String;
      
      private var var_518:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1565;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1332;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2130;
      }
      
      public function get experience() : int
      {
         return this.var_2133;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2129;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2134;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2131;
      }
      
      public function get respect() : int
      {
         return this.var_2132;
      }
      
      public function get ownerId() : int
      {
         return this.var_2128;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_518;
      }
      
      public function flush() : Boolean
      {
         this.var_1565 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1565 = param1.readInteger();
         this._name = param1.readString();
         this.var_1332 = param1.readInteger();
         this.var_2130 = param1.readInteger();
         this.var_2133 = param1.readInteger();
         this.var_2129 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2134 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2131 = param1.readInteger();
         this.var_536 = param1.readString();
         this.var_2132 = param1.readInteger();
         this.var_2128 = param1.readInteger();
         this.var_518 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
