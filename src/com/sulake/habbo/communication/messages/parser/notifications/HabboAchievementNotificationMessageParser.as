package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1332:int;
      
      private var var_1825:int;
      
      private var var_2192:int;
      
      private var var_1659:int;
      
      private var var_1331:int;
      
      private var var_2054:String = "";
      
      private var var_2607:String = "";
      
      private var var_2608:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1332 = param1.readInteger();
         this.var_2054 = param1.readString();
         this.var_1825 = param1.readInteger();
         this.var_2192 = param1.readInteger();
         this.var_1659 = param1.readInteger();
         this.var_1331 = param1.readInteger();
         this.var_2608 = param1.readInteger();
         this.var_2607 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1332;
      }
      
      public function get points() : int
      {
         return this.var_1825;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2192;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1659;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1331;
      }
      
      public function get badgeID() : String
      {
         return this.var_2054;
      }
      
      public function get achievementID() : int
      {
         return this.var_2608;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2607;
      }
   }
}
