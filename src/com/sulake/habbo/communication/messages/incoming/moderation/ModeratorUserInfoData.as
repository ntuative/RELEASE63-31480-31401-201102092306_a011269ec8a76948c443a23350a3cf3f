package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2060:int;
      
      private var var_2058:int;
      
      private var var_747:Boolean;
      
      private var var_2059:int;
      
      private var var_2057:int;
      
      private var var_2055:int;
      
      private var var_2056:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2060 = param1.readInteger();
         this.var_2058 = param1.readInteger();
         this.var_747 = param1.readBoolean();
         this.var_2059 = param1.readInteger();
         this.var_2057 = param1.readInteger();
         this.var_2055 = param1.readInteger();
         this.var_2056 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2060;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2058;
      }
      
      public function get online() : Boolean
      {
         return this.var_747;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2059;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2057;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2055;
      }
      
      public function get banCount() : int
      {
         return this.var_2056;
      }
   }
}
