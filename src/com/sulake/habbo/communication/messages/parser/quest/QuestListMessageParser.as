package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestListMessageParser implements IMessageParser
   {
       
      
      private var var_1505:String;
      
      private var var_1504:int;
      
      private var var_356:Array;
      
      public function QuestListMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var _loc1_:* = null;
         this.var_1505 = "";
         this.var_1504 = 2;
         if(this.var_356)
         {
            for each(_loc1_ in this.var_356)
            {
               _loc1_.dispose();
            }
         }
         this.var_356 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1505 = param1.readString();
         this.var_1504 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_356.push(new QuestMessageData(param1));
            _loc3_++;
         }
         return true;
      }
      
      public function get quests() : Array
      {
         return this.var_356;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1505;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1504;
      }
   }
}
