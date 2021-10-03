package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestAcceptedMessageParser implements IMessageParser
   {
       
      
      private var var_1505:String;
      
      private var var_1090:QuestMessageData;
      
      public function QuestAcceptedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1505 = "";
         if(this.var_1090)
         {
            this.var_1090.dispose();
         }
         this.var_1090 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1505 = param1.readString();
         this.var_1090 = new QuestMessageData(param1);
         return true;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1505;
      }
      
      public function get questData() : QuestMessageData
      {
         return this.var_1090;
      }
   }
}
