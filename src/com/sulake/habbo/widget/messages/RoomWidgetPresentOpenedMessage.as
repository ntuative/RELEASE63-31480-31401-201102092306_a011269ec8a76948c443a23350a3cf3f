package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1493:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1432:String;
      
      private var var_1685:int;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1432 = param2;
         this.var_1685 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1432;
      }
      
      public function get classId() : int
      {
         return this.var_1685;
      }
   }
}
