package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2669:int;
      
      private var var_2667:int;
      
      private var var_2668:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2669 = param1;
         this.var_2667 = param2;
         this.var_2668 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2669,this.var_2667,this.var_2668];
      }
      
      public function dispose() : void
      {
      }
   }
}
