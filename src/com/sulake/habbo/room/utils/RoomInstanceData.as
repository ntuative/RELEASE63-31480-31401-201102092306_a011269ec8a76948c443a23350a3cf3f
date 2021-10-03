package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_702:TileHeightMap = null;
      
      private var var_1073:LegacyWallGeometry = null;
      
      private var var_1072:RoomCamera = null;
      
      private var var_700:SelectedRoomObjectData = null;
      
      private var var_701:SelectedRoomObjectData = null;
      
      private var var_2293:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1073 = new LegacyWallGeometry();
         this.var_1072 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_702;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_702 != null)
         {
            this.var_702.dispose();
         }
         this.var_702 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1073;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1072;
      }
      
      public function get worldType() : String
      {
         return this.var_2293;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2293 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_700;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_700 != null)
         {
            this.var_700.dispose();
         }
         this.var_700 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_701;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_701 != null)
         {
            this.var_701.dispose();
         }
         this.var_701 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_702 != null)
         {
            this.var_702.dispose();
            this.var_702 = null;
         }
         if(this.var_1073 != null)
         {
            this.var_1073.dispose();
            this.var_1073 = null;
         }
         if(this.var_1072 != null)
         {
            this.var_1072.dispose();
            this.var_1072 = null;
         }
         if(this.var_700 != null)
         {
            this.var_700.dispose();
            this.var_700 = null;
         }
         if(this.var_701 != null)
         {
            this.var_701.dispose();
            this.var_701 = null;
         }
      }
   }
}
