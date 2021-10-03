package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_878:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1001:String = "inventory_effects";
      
      public static const const_1028:String = "inventory_badges";
      
      public static const const_1479:String = "inventory_clothes";
      
      public static const const_1568:String = "inventory_furniture";
       
      
      private var var_2613:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_878);
         this.var_2613 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2613;
      }
   }
}
