package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_662:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_287:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_662);
         this.var_287 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_287;
      }
   }
}
