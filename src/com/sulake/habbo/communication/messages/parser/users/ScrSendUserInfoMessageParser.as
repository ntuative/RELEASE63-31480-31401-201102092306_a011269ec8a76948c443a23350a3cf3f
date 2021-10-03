package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1740:int = 1;
      
      public static const const_1644:int = 2;
       
      
      private var var_832:String;
      
      private var var_2228:int;
      
      private var var_2225:int;
      
      private var var_2219:int;
      
      private var var_2224:int;
      
      private var var_2223:Boolean;
      
      private var var_2229:Boolean;
      
      private var var_2222:int;
      
      private var var_2227:int;
      
      private var var_2226:Boolean;
      
      private var var_2221:int;
      
      private var var_2220:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_832 = param1.readString();
         this.var_2228 = param1.readInteger();
         this.var_2225 = param1.readInteger();
         this.var_2219 = param1.readInteger();
         this.var_2224 = param1.readInteger();
         this.var_2223 = param1.readBoolean();
         this.var_2229 = param1.readBoolean();
         this.var_2222 = param1.readInteger();
         this.var_2227 = param1.readInteger();
         this.var_2226 = param1.readBoolean();
         this.var_2221 = param1.readInteger();
         this.var_2220 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_832;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2228;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2225;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2219;
      }
      
      public function get responseType() : int
      {
         return this.var_2224;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2223;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2229;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2222;
      }
      
      public function get method_3() : int
      {
         return this.var_2227;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2226;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2221;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2220;
      }
   }
}
