package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2176:int;
      
      private var var_1432:String;
      
      private var var_2174:int;
      
      private var var_2173:int;
      
      private var _category:int;
      
      private var var_1967:String;
      
      private var var_1390:int;
      
      private var var_2178:int;
      
      private var var_2172:int;
      
      private var var_2171:int;
      
      private var var_2177:int;
      
      private var var_2175:Boolean;
      
      private var var_2790:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2176 = param1;
         this.var_1432 = param2;
         this.var_2174 = param3;
         this.var_2173 = param4;
         this._category = param5;
         this.var_1967 = param6;
         this.var_1390 = param7;
         this.var_2178 = param8;
         this.var_2172 = param9;
         this.var_2171 = param10;
         this.var_2177 = param11;
         this.var_2175 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2176;
      }
      
      public function get itemType() : String
      {
         return this.var_1432;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2174;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2173;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1967;
      }
      
      public function get extra() : int
      {
         return this.var_1390;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2178;
      }
      
      public function get creationDay() : int
      {
         return this.var_2172;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2171;
      }
      
      public function get creationYear() : int
      {
         return this.var_2177;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2175;
      }
      
      public function get songID() : int
      {
         return this.var_1390;
      }
   }
}
