package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_505:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_714:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var _objectId:int;
      
      private var _text:String;
      
      private var var_927:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         this._objectId = param2;
         this._text = param3;
         this.var_927 = param4;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_927;
      }
   }
}
