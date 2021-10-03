package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_768:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2525:int;
      
      private var var_2526:int;
      
      private var _color:uint;
      
      private var var_1095:int;
      
      private var var_2527:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_768);
         this.var_2525 = param1;
         this.var_2526 = param2;
         this._color = param3;
         this.var_1095 = param4;
         this.var_2527 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2525;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2526;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1095;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2527;
      }
   }
}
