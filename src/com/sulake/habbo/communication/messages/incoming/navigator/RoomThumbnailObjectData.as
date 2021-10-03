package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1275:int;
      
      private var var_1274:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1275 = this.var_1275;
         _loc1_.var_1274 = this.var_1274;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1275 = param1;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_1274 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1275;
      }
      
      public function get method_1() : int
      {
         return this.var_1274;
      }
   }
}
