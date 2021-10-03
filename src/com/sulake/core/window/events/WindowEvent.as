package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1592:String = "WE_CREATE";
      
      public static const const_1562:String = "WE_CREATED";
      
      public static const const_1548:String = "WE_DESTROY";
      
      public static const const_315:String = "WE_DESTROYED";
      
      public static const const_1452:String = "WE_OPEN";
      
      public static const const_1424:String = "WE_OPENED";
      
      public static const const_1499:String = "WE_CLOSE";
      
      public static const const_1577:String = "WE_CLOSED";
      
      public static const const_1496:String = "WE_FOCUS";
      
      public static const const_288:String = "WE_FOCUSED";
      
      public static const const_1645:String = "WE_UNFOCUS";
      
      public static const const_1567:String = "WE_UNFOCUSED";
      
      public static const const_1549:String = "WE_ACTIVATE";
      
      public static const const_1531:String = "WE_ACTIVATED";
      
      public static const const_1376:String = "WE_DEACTIVATE";
      
      public static const const_847:String = "WE_DEACTIVATED";
      
      public static const const_504:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_795:String = "WE_UNSELECT";
      
      public static const const_789:String = "WE_UNSELECTED";
      
      public static const const_1819:String = "WE_ATTACH";
      
      public static const const_1844:String = "WE_ATTACHED";
      
      public static const const_1785:String = "WE_DETACH";
      
      public static const const_1825:String = "WE_DETACHED";
      
      public static const const_1447:String = "WE_LOCK";
      
      public static const const_1491:String = "WE_LOCKED";
      
      public static const const_1492:String = "WE_UNLOCK";
      
      public static const const_1476:String = "WE_UNLOCKED";
      
      public static const const_621:String = "WE_ENABLE";
      
      public static const const_297:String = "WE_ENABLED";
      
      public static const const_747:String = "WE_DISABLE";
      
      public static const const_254:String = "WE_DISABLED";
      
      public static const const_1555:String = "WE_RELOCATE";
      
      public static const const_403:String = "WE_RELOCATED";
      
      public static const const_1564:String = "WE_RESIZE";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1586:String = "WE_MINIMIZE";
      
      public static const const_1472:String = "WE_MINIMIZED";
      
      public static const const_1524:String = "WE_MAXIMIZE";
      
      public static const const_1380:String = "WE_MAXIMIZED";
      
      public static const const_1580:String = "WE_RESTORE";
      
      public static const const_1470:String = "WE_RESTORED";
      
      public static const const_1843:String = "WE_ARRANGE";
      
      public static const const_1846:String = "WE_ARRANGED";
      
      public static const const_100:String = "WE_UPDATE";
      
      public static const const_1878:String = "WE_UPDATED";
      
      public static const const_1845:String = "WE_CHILD_RELOCATE";
      
      public static const const_454:String = "WE_CHILD_RELOCATED";
      
      public static const const_1923:String = "WE_CHILD_RESIZE";
      
      public static const const_285:String = "WE_CHILD_RESIZED";
      
      public static const const_1774:String = "WE_CHILD_REMOVE";
      
      public static const const_457:String = "WE_CHILD_REMOVED";
      
      public static const const_1729:String = "WE_PARENT_RELOCATE";
      
      public static const const_1855:String = "WE_PARENT_RELOCATED";
      
      public static const const_1884:String = "WE_PARENT_RESIZE";
      
      public static const const_1437:String = "WE_PARENT_RESIZED";
      
      public static const const_189:String = "WE_OK";
      
      public static const const_623:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_503:String = "WE_SCROLL";
      
      public static const const_164:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1973:IWindow;
      
      protected var var_1972:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1973 = param3;
         this.var_1972 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1973;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1972 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1972;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
