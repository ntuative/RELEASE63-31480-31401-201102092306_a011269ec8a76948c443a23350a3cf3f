package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2013:int;
      
      private var var_2015:int;
      
      private var var_2014:int;
      
      private var var_2016:String;
      
      private var var_1640:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2013 = param1.readInteger();
         this.var_2015 = param1.readInteger();
         this.var_2014 = param1.readInteger();
         this.var_2016 = param1.readString();
         this.var_1640 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2013;
      }
      
      public function get minute() : int
      {
         return this.var_2015;
      }
      
      public function get chatterId() : int
      {
         return this.var_2014;
      }
      
      public function get chatterName() : String
      {
         return this.var_2016;
      }
      
      public function get msg() : String
      {
         return this.var_1640;
      }
   }
}
