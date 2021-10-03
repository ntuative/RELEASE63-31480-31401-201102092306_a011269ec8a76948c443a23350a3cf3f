package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2203:int;
      
      private var var_1774:String;
      
      private var var_2502:String;
      
      private var var_2561:Boolean;
      
      private var var_2560:Boolean;
      
      private var var_2558:int;
      
      private var var_2503:String;
      
      private var var_2559:String;
      
      private var var_1727:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2203 = param1.readInteger();
         this.var_1774 = param1.readString();
         this.var_2502 = param1.readString();
         this.var_2561 = param1.readBoolean();
         this.var_2560 = param1.readBoolean();
         param1.readString();
         this.var_2558 = param1.readInteger();
         this.var_2503 = param1.readString();
         this.var_2559 = param1.readString();
         this.var_1727 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2203;
      }
      
      public function get avatarName() : String
      {
         return this.var_1774;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2502;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2561;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2560;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2558;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2503;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2559;
      }
      
      public function get realName() : String
      {
         return this.var_1727;
      }
   }
}
