package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2434:int;
      
      private var var_1359:String;
      
      private var var_2433:String;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         this.var_2434 = param1;
         this.var_1359 = param2;
         this.var_2433 = param3;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2434,this.var_1359,this.var_2433];
      }
   }
}
