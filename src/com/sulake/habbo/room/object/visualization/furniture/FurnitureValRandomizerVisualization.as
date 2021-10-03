package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_941:int = 20;
      
      private static const const_591:int = 10;
      
      private static const const_1319:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_300:Array;
      
      private var var_750:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_300 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_750)
            {
               this.var_750 = true;
               this.var_300 = new Array();
               this.var_300.push(const_1319);
               this.var_300.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_591)
         {
            if(this.var_750)
            {
               this.var_750 = false;
               this.var_300 = new Array();
               if(_direction == 2)
               {
                  this.var_300.push(const_941 + 5 - param1);
                  this.var_300.push(const_591 + 5 - param1);
               }
               else
               {
                  this.var_300.push(const_941 + param1);
                  this.var_300.push(const_591 + param1);
               }
               this.var_300.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
