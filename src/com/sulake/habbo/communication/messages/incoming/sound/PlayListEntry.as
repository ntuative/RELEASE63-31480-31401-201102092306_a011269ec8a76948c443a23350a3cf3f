package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2170:int;
      
      private var var_2603:int;
      
      private var var_2602:String;
      
      private var var_2601:String;
      
      private var var_2604:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2170 = param1;
         this.var_2603 = param2;
         this.var_2602 = param3;
         this.var_2601 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2170;
      }
      
      public function get length() : int
      {
         return this.var_2603;
      }
      
      public function get name() : String
      {
         return this.var_2602;
      }
      
      public function get creator() : String
      {
         return this.var_2601;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2604;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2604 = param1;
      }
   }
}
