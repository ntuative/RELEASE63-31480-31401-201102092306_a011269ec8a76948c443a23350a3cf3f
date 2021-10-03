package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_28:String = "AssetLoaderEventComplete";
      
      public static const const_1070:String = "AssetLoaderEventProgress";
      
      public static const const_1093:String = "AssetLoaderEventUnload";
      
      public static const const_1123:String = "AssetLoaderEventStatus";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_1115:String = "AssetLoaderEventOpen";
       
      
      private var var_372:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_372 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_372;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_372);
      }
   }
}
