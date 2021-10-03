package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_370:int = 1;
      
      public static const const_214:int = 2;
      
      public static const const_286:int = 3;
      
      public static const const_351:int = 4;
      
      public static const const_230:int = 5;
      
      public static const const_342:int = 1;
      
      public static const const_797:int = 2;
      
      public static const const_825:int = 3;
      
      public static const const_818:int = 4;
      
      public static const const_228:int = 5;
      
      public static const const_641:int = 6;
      
      public static const const_743:int = 7;
      
      public static const const_264:int = 8;
      
      public static const const_356:int = 9;
      
      public static const const_1871:int = 10;
      
      public static const const_869:int = 11;
      
      public static const const_446:int = 12;
       
      
      private var var_422:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_422 = new Array();
         this.var_422.push(new Tab(this._navigator,const_370,const_446,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_528));
         this.var_422.push(new Tab(this._navigator,const_214,const_342,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_528));
         this.var_422.push(new Tab(this._navigator,const_351,const_869,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1135));
         this.var_422.push(new Tab(this._navigator,const_286,const_228,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_528));
         this.var_422.push(new Tab(this._navigator,const_230,const_264,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_881));
         this.setSelectedTab(const_370);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_351;
      }
      
      public function get tabs() : Array
      {
         return this.var_422;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_422)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_422)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_422)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
