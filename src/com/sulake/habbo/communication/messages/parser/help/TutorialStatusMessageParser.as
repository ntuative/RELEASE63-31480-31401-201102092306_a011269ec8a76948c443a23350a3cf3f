package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1154:Boolean;
      
      private var var_1153:Boolean;
      
      private var var_1401:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1154;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1153;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1401;
      }
      
      public function flush() : Boolean
      {
         this.var_1154 = false;
         this.var_1153 = false;
         this.var_1401 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1154 = param1.readBoolean();
         this.var_1153 = param1.readBoolean();
         this.var_1401 = param1.readBoolean();
         return true;
      }
   }
}
