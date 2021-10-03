package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2496:String;
      
      private var var_1770:String;
      
      private var var_2497:String;
      
      private var var_1772:Boolean;
      
      private var var_1771:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2496 = String(param1["set-type"]);
         this.var_1770 = String(param1["flipped-set-type"]);
         this.var_2497 = String(param1["remove-set-type"]);
         this.var_1772 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1771 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1771;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1771 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2496;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1770;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2497;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1772;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1772 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1770 = param1;
      }
   }
}
