package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_169:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_248:String = "RWUIUE_PEER";
      
      public static const const_1574:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_1015:int = 2;
      
      public static const const_1047:int = 3;
      
      public static const const_1556:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1728:String = "";
      
      private var var_1996:int;
      
      private var var_1989:int = 0;
      
      private var var_1987:int = 0;
      
      private var var_536:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_258:Array;
      
      private var var_1483:Array;
      
      private var var_1411:int = 0;
      
      private var var_1985:String = "";
      
      private var var_1984:int = 0;
      
      private var var_1991:int = 0;
      
      private var var_1489:Boolean = false;
      
      private var var_1727:String = "";
      
      private var var_1997:Boolean = false;
      
      private var var_1995:Boolean = true;
      
      private var var_997:int = 0;
      
      private var var_1998:Boolean = false;
      
      private var var_1988:Boolean = false;
      
      private var var_1992:Boolean = false;
      
      private var var_1993:Boolean = false;
      
      private var var_1986:Boolean = false;
      
      private var var_1994:Boolean = false;
      
      private var var_1990:int = 0;
      
      private var var_1491:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_258 = [];
         this.var_1483 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1728 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1728;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1996 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1996;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_1989 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_1989;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_1987 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_1987;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_536 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_258 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_258;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1483;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1483 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1411 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1411;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_1985 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_1985;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_1997 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_1997;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_997 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_997;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_1998 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_1998;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_1988 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_1988;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_1992 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_1992;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_1993 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_1993;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_1986 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_1986;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_1994 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_1994;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_1990 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_1990;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_1995 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_1995;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1491 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1491;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_1984 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_1984;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_1991 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_1991;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1489 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1489;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1727 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1727;
      }
   }
}
