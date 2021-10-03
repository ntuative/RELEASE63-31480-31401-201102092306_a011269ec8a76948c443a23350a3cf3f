package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_892:BigInteger;
      
      private var var_2579:BigInteger;
      
      private var var_1826:BigInteger;
      
      private var var_2580:BigInteger;
      
      private var var_1420:BigInteger;
      
      private var var_1827:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1420 = param1;
         this.var_1827 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1420.toString() + ",generator: " + this.var_1827.toString() + ",secret: " + param1);
         this.var_892 = new BigInteger();
         this.var_892.fromRadix(param1,param2);
         this.var_2579 = this.var_1827.modPow(this.var_892,this.var_1420);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1826 = new BigInteger();
         this.var_1826.fromRadix(param1,param2);
         this.var_2580 = this.var_1826.modPow(this.var_892,this.var_1420);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2579.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2580.toRadix(param1);
      }
   }
}
