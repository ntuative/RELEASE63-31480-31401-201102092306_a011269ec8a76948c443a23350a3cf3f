package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_941:int = 20;
      
      private static const const_591:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_300:Array;
      
      private var var_750:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_300 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_750)
            {
               this.var_750 = true;
               this.var_300 = new Array();
               this.var_300.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_750)
            {
               this.var_750 = false;
               this.var_300 = new Array();
               this.var_300.push(const_941);
               this.var_300.push(const_591 + param1);
               this.var_300.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
