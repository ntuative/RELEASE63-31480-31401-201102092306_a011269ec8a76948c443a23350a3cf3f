package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_890:String = "";
      
      public static const const_479:int = 0;
      
      public static const const_547:int = 255;
      
      public static const const_609:Boolean = false;
      
      public static const const_511:int = 0;
      
      public static const const_431:int = 0;
      
      public static const const_519:int = 0;
      
      public static const const_1142:int = 1;
      
      public static const const_969:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2018:String = "";
      
      private var var_1525:int = 0;
      
      private var var_2020:int = 255;
      
      private var var_2584:Boolean = false;
      
      private var var_2583:int = 0;
      
      private var var_2586:int = 0;
      
      private var var_2585:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2018 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2018;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1525 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1525;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2020 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2020;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2584 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2584;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2583 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2583;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2586 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2586;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2585 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2585;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
