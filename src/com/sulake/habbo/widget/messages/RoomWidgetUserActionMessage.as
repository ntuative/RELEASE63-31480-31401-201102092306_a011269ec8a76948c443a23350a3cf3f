package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_853:String = "RWUAM_WHISPER_USER";
      
      public static const const_855:String = "RWUAM_IGNORE_USER";
      
      public static const const_640:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_432:String = "RWUAM_KICK_USER";
      
      public static const const_840:String = "RWUAM_BAN_USER";
      
      public static const const_835:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_660:String = "RWUAM_RESPECT_USER";
      
      public static const const_741:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_834:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_729:String = "RWUAM_START_TRADING";
      
      public static const const_760:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_471:String = "RWUAM_KICK_BOT";
      
      public static const const_778:String = "RWUAM_REPORT";
      
      public static const const_559:String = "RWUAM_PICKUP_PET";
      
      public static const const_1416:String = "RWUAM_TRAIN_PET";
      
      public static const const_502:String = " RWUAM_RESPECT_PET";
      
      public static const const_392:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
