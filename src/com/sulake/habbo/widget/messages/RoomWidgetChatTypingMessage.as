package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_806:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_574:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_806);
         this.var_574 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_574;
      }
   }
}
