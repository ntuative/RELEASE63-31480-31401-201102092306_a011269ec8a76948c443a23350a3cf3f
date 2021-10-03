package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_928:int = 3;
       
      
      private var var_2438:int = -1;
      
      private var var_2439:int = -2;
      
      private var var_338:Vector3d = null;
      
      private var var_405:Vector3d = null;
      
      private var var_2441:Boolean = false;
      
      private var var_2437:Boolean = false;
      
      private var var_2435:Boolean = false;
      
      private var var_2436:Boolean = false;
      
      private var var_2444:int = 0;
      
      private var var_2442:int = 0;
      
      private var var_2440:int = 0;
      
      private var var_2443:int = 0;
      
      private var var_1374:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_405;
      }
      
      public function get targetId() : int
      {
         return this.var_2438;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2439;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2441;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2437;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2435;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2436;
      }
      
      public function get screenWd() : int
      {
         return this.var_2444;
      }
      
      public function get screenHt() : int
      {
         return this.var_2442;
      }
      
      public function get roomWd() : int
      {
         return this.var_2440;
      }
      
      public function get roomHt() : int
      {
         return this.var_2443;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2438 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2439 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2441 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2437 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2435 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2436 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2444 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2442 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2440 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2443 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_338 == null)
         {
            this.var_338 = new Vector3d();
         }
         if(this.var_338.x != param1.x || this.var_338.y != param1.y || this.var_338.z != param1.z)
         {
            this.var_338.assign(param1);
            this.var_1374 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_338 = null;
         this.var_405 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_405 != null)
         {
            return;
         }
         this.var_405 = new Vector3d();
         this.var_405.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_338 != null && this.var_405 != null)
         {
            ++this.var_1374;
            _loc4_ = Vector3d.dif(this.var_338,this.var_405);
            if(_loc4_.length <= param2)
            {
               this.var_405 = this.var_338;
               this.var_338 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_928 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1374 <= const_928)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_405 = Vector3d.sum(this.var_405,_loc4_);
            }
         }
      }
   }
}
