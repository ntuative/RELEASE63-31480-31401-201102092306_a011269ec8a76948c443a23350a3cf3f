package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2120:int = 0;
      
      private var var_1291:String = "";
      
      private var var_1570:String = "";
      
      private var var_2121:String = "";
      
      private var var_2122:String = "";
      
      private var var_1558:int = 0;
      
      private var var_2118:int = 0;
      
      private var var_2123:int = 0;
      
      private var var_1292:int = 0;
      
      private var var_2119:int = 0;
      
      private var var_1290:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2120 = param1;
         this.var_1291 = param2;
         this.var_1570 = param3;
         this.var_2121 = param4;
         this.var_2122 = param5;
         if(param6)
         {
            this.var_1558 = 1;
         }
         else
         {
            this.var_1558 = 0;
         }
         this.var_2118 = param7;
         this.var_2123 = param8;
         this.var_1292 = param9;
         this.var_2119 = param10;
         this.var_1290 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2120,this.var_1291,this.var_1570,this.var_2121,this.var_2122,this.var_1558,this.var_2118,this.var_2123,this.var_1292,this.var_2119,this.var_1290];
      }
   }
}
