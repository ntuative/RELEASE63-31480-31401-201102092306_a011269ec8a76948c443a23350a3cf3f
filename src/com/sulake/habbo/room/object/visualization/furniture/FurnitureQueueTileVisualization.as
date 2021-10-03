package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1229:int = 2;
      
      private static const const_1230:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_300:Array;
      
      private var var_995:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_300 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1229)
         {
            this.var_300 = new Array();
            this.var_300.push(const_1230);
            this.var_995 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_995 > 0)
         {
            --this.var_995;
         }
         if(this.var_995 == 0)
         {
            if(this.var_300.length > 0)
            {
               super.setAnimation(this.var_300.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
