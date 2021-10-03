package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1568:int;
      
      private var var_2523:int;
      
      private var var_1152:int;
      
      private var var_463:Number;
      
      private var var_2524:Boolean;
      
      private var var_2522:int;
      
      private var var_1785:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2523 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2522 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2524 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1152;
         if(this.var_1152 == 1)
         {
            this.var_463 = param1;
            this.var_1568 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1152);
            this.var_463 = this.var_463 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2524 && param3 - this.var_1568 >= this.var_2523 && this.var_1785 < this.var_2522)
         {
            _loc5_ = 1000 / this.var_463;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1785;
            this.var_1568 = param3;
            this.var_1152 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
