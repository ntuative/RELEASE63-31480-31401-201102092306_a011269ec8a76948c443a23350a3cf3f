package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2359:Boolean;
      
      private var var_2360:int;
      
      private var var_1527:Array;
      
      private var var_664:Array;
      
      private var var_663:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2359;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2360;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1527;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_664;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_663;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1527 = [];
         this.var_664 = [];
         this.var_663 = [];
         this.var_2359 = param1.readBoolean();
         this.var_2360 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1527.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_664.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_663.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
