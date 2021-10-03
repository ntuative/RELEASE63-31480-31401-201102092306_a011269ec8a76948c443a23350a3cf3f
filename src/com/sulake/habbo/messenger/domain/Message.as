package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_651:int = 1;
      
      public static const const_888:int = 2;
      
      public static const const_642:int = 3;
      
      public static const const_1108:int = 4;
      
      public static const const_661:int = 5;
      
      public static const const_1054:int = 6;
       
      
      private var _type:int;
      
      private var var_1118:int;
      
      private var var_2033:String;
      
      private var var_2529:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1118 = param2;
         this.var_2033 = param3;
         this.var_2529 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2033;
      }
      
      public function get time() : String
      {
         return this.var_2529;
      }
      
      public function get senderId() : int
      {
         return this.var_1118;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
