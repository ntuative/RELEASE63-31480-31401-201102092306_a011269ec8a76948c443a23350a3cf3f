package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1831:int;
      
      private var var_2447:String;
      
      private var var_375:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1831 = param1.readInteger();
         this.var_2447 = param1.readString();
         this.var_375 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1831;
      }
      
      public function get nodeName() : String
      {
         return this.var_2447;
      }
      
      public function get visible() : Boolean
      {
         return this.var_375;
      }
   }
}
