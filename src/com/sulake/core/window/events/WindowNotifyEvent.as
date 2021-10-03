package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1554:String = "WN_CRETAE";
      
      public static const const_1482:String = "WN_CREATED";
      
      public static const const_1151:String = "WN_DESTROY";
      
      public static const const_1195:String = "WN_DESTROYED";
      
      public static const const_1196:String = "WN_OPEN";
      
      public static const const_1168:String = "WN_OPENED";
      
      public static const const_1055:String = "WN_CLOSE";
      
      public static const const_1161:String = "WN_CLOSED";
      
      public static const const_1174:String = "WN_FOCUS";
      
      public static const const_967:String = "WN_FOCUSED";
      
      public static const const_1027:String = "WN_UNFOCUS";
      
      public static const const_1208:String = "WN_UNFOCUSED";
      
      public static const const_1079:String = "WN_ACTIVATE";
      
      public static const const_389:String = "WN_ACTVATED";
      
      public static const const_1203:String = "WN_DEACTIVATE";
      
      public static const const_1185:String = "WN_DEACTIVATED";
      
      public static const const_472:String = "WN_SELECT";
      
      public static const const_341:String = "WN_SELECTED";
      
      public static const const_862:String = "WN_UNSELECT";
      
      public static const const_690:String = "WN_UNSELECTED";
      
      public static const const_1089:String = "WN_LOCK";
      
      public static const const_1105:String = "WN_LOCKED";
      
      public static const const_1040:String = "WN_UNLOCK";
      
      public static const const_968:String = "WN_UNLOCKED";
      
      public static const const_1190:String = "WN_ENABLE";
      
      public static const const_725:String = "WN_ENABLED";
      
      public static const const_1141:String = "WN_DISABLE";
      
      public static const const_745:String = "WN_DISABLED";
      
      public static const const_851:String = "WN_RESIZE";
      
      public static const const_168:String = "WN_RESIZED";
      
      public static const const_1113:String = "WN_RELOCATE";
      
      public static const const_575:String = "WN_RELOCATED";
      
      public static const const_1205:String = "WN_MINIMIZE";
      
      public static const const_1182:String = "WN_MINIMIZED";
      
      public static const const_1012:String = "WN_MAXIMIZE";
      
      public static const const_1112:String = "WN_MAXIMIZED";
      
      public static const const_974:String = "WN_RESTORE";
      
      public static const const_1077:String = "WN_RESTORED";
      
      public static const const_1864:String = "WN_ARRANGE";
      
      public static const const_1872:String = "WN_ARRANGED";
      
      public static const const_1841:String = "WN_UPDATE";
      
      public static const const_1728:String = "WN_UPDATED";
      
      public static const const_337:String = "WN_CHILD_ADDED";
      
      public static const const_884:String = "WN_CHILD_REMOVED";
      
      public static const const_300:String = "WN_CHILD_RESIZED";
      
      public static const const_275:String = "WN_CHILD_RELOCATED";
      
      public static const const_237:String = "WN_CHILD_ACTIVATED";
      
      public static const const_569:String = "WN_PARENT_ADDED";
      
      public static const const_1155:String = "WN_PARENT_REMOVED";
      
      public static const const_466:String = "WN_PARENT_RESIZED";
      
      public static const const_1018:String = "WN_PARENT_RELOCATED";
      
      public static const const_830:String = "WN_PARENT_ACTIVATED";
      
      public static const const_434:String = "WN_STATE_UPDATED";
      
      public static const const_439:String = "WN_STYLE_UPDATED";
      
      public static const const_461:String = "WN_PARAM_UPDATED";
      
      public static const const_1778:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1973,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
