package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1717:int = 0;
      
      public static const const_1571:int = 1;
      
      public static const const_1498:int = 2;
      
      public static const const_1831:int = 3;
      
      public static const const_1867:int = 4;
      
      public static const const_1838:int = 5;
      
      public static const const_1413:int = 10;
      
      public static const const_1806:int = 11;
      
      public static const const_1773:int = 12;
      
      public static const const_1927:int = 13;
      
      public static const const_1715:int = 16;
      
      public static const const_1780:int = 17;
      
      public static const const_1766:int = 18;
      
      public static const const_1894:int = 19;
      
      public static const const_1826:int = 20;
      
      public static const const_1802:int = 22;
      
      public static const const_1735:int = 23;
      
      public static const const_1881:int = 24;
      
      public static const const_1940:int = 25;
      
      public static const const_1886:int = 26;
      
      public static const const_1814:int = 27;
      
      public static const const_1889:int = 28;
      
      public static const const_1835:int = 29;
      
      public static const const_1932:int = 100;
      
      public static const const_1924:int = 101;
      
      public static const const_1895:int = 102;
      
      public static const const_1912:int = 103;
      
      public static const const_1883:int = 104;
      
      public static const const_1772:int = 105;
      
      public static const const_1869:int = 106;
      
      public static const const_1858:int = 107;
      
      public static const const_1734:int = 108;
      
      public static const const_1769:int = 109;
      
      public static const const_1794:int = 110;
      
      public static const const_1789:int = 111;
      
      public static const const_1762:int = 112;
      
      public static const const_1926:int = 113;
      
      public static const const_1719:int = 114;
      
      public static const const_1812:int = 115;
      
      public static const const_1817:int = 116;
      
      public static const const_1903:int = 117;
      
      public static const const_1781:int = 118;
      
      public static const const_1937:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1571:
            case const_1413:
               return "banned";
            case const_1498:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
