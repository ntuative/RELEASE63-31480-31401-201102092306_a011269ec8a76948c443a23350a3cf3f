package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1788:int;
      
      private var var_2528:int;
      
      private var var_1311:int;
      
      private var var_2333:int;
      
      private var var_112:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1788 = param1.readInteger();
         this.var_2528 = param1.readInteger();
         this.var_1311 = param1.readInteger();
         this.var_2333 = param1.readInteger();
         this.var_112 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1788);
      }
      
      public function get callId() : int
      {
         return this.var_1788;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2528;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1311;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2333;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_112;
      }
   }
}
