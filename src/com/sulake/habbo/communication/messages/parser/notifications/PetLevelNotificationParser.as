package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1565:int;
      
      private var var_2046:String;
      
      private var var_1332:int;
      
      private var var_536:String;
      
      private var var_1439:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1565 = param1.readInteger();
         this.var_2046 = param1.readString();
         this.var_1332 = param1.readInteger();
         this.var_536 = param1.readString();
         this.var_1439 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1565;
      }
      
      public function get petName() : String
      {
         return this.var_2046;
      }
      
      public function get level() : int
      {
         return this.var_1332;
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function get petType() : int
      {
         return this.var_1439;
      }
   }
}
