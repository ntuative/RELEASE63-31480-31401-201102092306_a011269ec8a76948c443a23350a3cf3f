package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_330:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_993:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1014:String = "RWOCM_PIXELS";
      
      public static const const_1016:String = "RWOCM_CREDITS";
       
      
      private var var_2316:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_330);
         this.var_2316 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2316;
      }
   }
}
