package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_764:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2054:String;
      
      private var var_2053:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_764,param3,param4);
         this.var_2054 = param1;
         this.var_2053 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2054;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2053;
      }
   }
}
