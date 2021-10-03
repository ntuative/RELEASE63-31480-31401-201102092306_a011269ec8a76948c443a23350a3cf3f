package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_697;
         param1["bitmap"] = const_852;
         param1["border"] = const_828;
         param1["border_notify"] = const_1445;
         param1["button"] = const_429;
         param1["button_thick"] = const_758;
         param1["button_icon"] = const_1535;
         param1["button_group_left"] = const_810;
         param1["button_group_center"] = const_861;
         param1["button_group_right"] = const_774;
         param1["canvas"] = const_739;
         param1["checkbox"] = const_732;
         param1["closebutton"] = const_1065;
         param1["container"] = const_350;
         param1["container_button"] = const_646;
         param1["display_object_wrapper"] = const_616;
         param1["dropmenu"] = const_468;
         param1["dropmenu_item"] = const_539;
         param1["frame"] = const_354;
         param1["frame_notify"] = const_1395;
         param1["header"] = const_785;
         param1["html"] = const_1087;
         param1["icon"] = const_1058;
         param1["itemgrid"] = const_1165;
         param1["itemgrid_horizontal"] = const_545;
         param1["itemgrid_vertical"] = const_756;
         param1["itemlist"] = const_1204;
         param1["itemlist_horizontal"] = const_368;
         param1["itemlist_vertical"] = const_379;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1650;
         param1["menu"] = const_1398;
         param1["menu_item"] = const_1394;
         param1["submenu"] = const_1037;
         param1["minimizebox"] = const_1431;
         param1["notify"] = const_1438;
         param1["null"] = const_873;
         param1["password"] = const_808;
         param1["radiobutton"] = const_871;
         param1["region"] = const_737;
         param1["restorebox"] = const_1541;
         param1["scaler"] = const_892;
         param1["scaler_horizontal"] = const_1627;
         param1["scaler_vertical"] = const_1475;
         param1["scrollbar_horizontal"] = const_533;
         param1["scrollbar_vertical"] = const_742;
         param1["scrollbar_slider_button_up"] = const_1189;
         param1["scrollbar_slider_button_down"] = const_1132;
         param1["scrollbar_slider_button_left"] = const_1144;
         param1["scrollbar_slider_button_right"] = const_1133;
         param1["scrollbar_slider_bar_horizontal"] = const_1051;
         param1["scrollbar_slider_bar_vertical"] = const_1008;
         param1["scrollbar_slider_track_horizontal"] = const_1048;
         param1["scrollbar_slider_track_vertical"] = const_1111;
         param1["scrollable_itemlist"] = const_1503;
         param1["scrollable_itemlist_vertical"] = const_542;
         param1["scrollable_itemlist_horizontal"] = const_1114;
         param1["selector"] = const_625;
         param1["selector_list"] = const_663;
         param1["submenu"] = const_1037;
         param1["tab_button"] = const_561;
         param1["tab_container_button"] = const_1081;
         param1["tab_context"] = const_336;
         param1["tab_content"] = const_1109;
         param1["tab_selector"] = const_706;
         param1["text"] = const_563;
         param1["input"] = const_713;
         param1["toolbar"] = const_1389;
         param1["tooltip"] = const_396;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
