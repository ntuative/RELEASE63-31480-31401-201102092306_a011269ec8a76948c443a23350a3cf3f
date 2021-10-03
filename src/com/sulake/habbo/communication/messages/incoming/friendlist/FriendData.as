package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_811:int;
      
      private var var_747:Boolean;
      
      private var var_1729:Boolean;
      
      private var var_536:String;
      
      private var var_1458:int;
      
      private var var_1728:String;
      
      private var var_1730:String;
      
      private var var_1727:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_811 = param1.readInteger();
         this.var_747 = param1.readBoolean();
         this.var_1729 = param1.readBoolean();
         this.var_536 = param1.readString();
         this.var_1458 = param1.readInteger();
         this.var_1728 = param1.readString();
         this.var_1730 = param1.readString();
         this.var_1727 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_811;
      }
      
      public function get online() : Boolean
      {
         return this.var_747;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1729;
      }
      
      public function get figure() : String
      {
         return this.var_536;
      }
      
      public function get categoryId() : int
      {
         return this.var_1458;
      }
      
      public function get motto() : String
      {
         return this.var_1728;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1730;
      }
      
      public function get realName() : String
      {
         return this.var_1727;
      }
   }
}
