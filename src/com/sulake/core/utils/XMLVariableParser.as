package com.sulake.core.utils
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class XMLVariableParser
   {
      
      public static const const_127:String = "hex";
      
      public static const const_38:String = "int";
      
      public static const const_227:String = "uint";
      
      public static const const_266:String = "Number";
      
      public static const const_1619:String = "float";
      
      public static const const_37:String = "Boolean";
      
      public static const const_1399:String = "bool";
      
      public static const const_49:String = "String";
      
      public static const const_229:String = "Point";
      
      public static const const_252:String = "Rectangle";
      
      public static const const_130:String = "Array";
      
      public static const const_224:String = "Map";
      
      private static const KEY:String = "key";
      
      private static const const_908:String = "type";
      
      private static const const_583:String = "value";
      
      private static const const_579:String = "true";
      
      private static const const_1678:String = "INotify";
      
      private static const X:String = "x";
      
      private static const const_907:String = "y";
      
      private static const const_1226:String = "width";
      
      private static const HEIGHT:String = "height";
      
      private static const const_1219:String = ",";
       
      
      public function XMLVariableParser()
      {
         super();
      }
      
      public static function parseVariableList(param1:XMLList, param2:Map, param3:Array = null) : uint
      {
         var _loc5_:int = 0;
         var _loc4_:uint = param1.length();
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            XMLVariableParser.parseVariableToken(param1[_loc5_],param2,param3);
            _loc5_++;
         }
         return _loc4_;
      }
      
      private static function parseVariableToken(param1:XML, param2:Map, param3:Array = null) : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc5_:String = const_49;
         _loc7_ = param1.attribute(KEY);
         if(_loc7_.length() > 0)
         {
            _loc4_ = String(param1.attribute(KEY));
         }
         else
         {
            _loc4_ = param1.child(KEY)[0];
         }
         _loc7_ = param1.attribute(const_908);
         if(_loc7_.length() > 0)
         {
            _loc5_ = String(param1.attribute(const_908));
         }
         _loc7_ = param1.attribute(const_583);
         if(_loc7_.length() > 0)
         {
            _loc6_ = String(param1.attribute(const_583));
         }
         if(_loc6_ != null)
         {
            param2[_loc4_] = XMLVariableParser.castStringToType(_loc6_,_loc5_);
         }
         else
         {
            _loc8_ = param1.child(const_583)[0];
            if(_loc8_ != null)
            {
               _loc9_ = _loc8_.child(0)[0];
               _loc6_ = _loc9_.children()[0];
               _loc5_ = _loc9_.localName();
               param2[_loc4_] = XMLVariableParser.parseValueType(_loc9_,_loc5_);
            }
            else if(_loc5_ == const_224 || _loc5_ == const_130)
            {
               param2[_loc4_] = XMLVariableParser.parseValueType(param1,_loc5_);
            }
         }
         if(param3)
         {
            param3.push(_loc5_);
         }
      }
      
      public static function castStringToType(param1:String, param2:String) : Object
      {
         switch(param2)
         {
            case const_227:
               return uint(param1);
            case const_38:
               return int(param1);
            case const_266:
               return Number(param1);
            case const_1619:
               return Number(param1);
            case const_37:
               return param1 == const_579 || int(param1) > 0;
            case const_1399:
               return param1 == const_579 || int(param1) > 0;
            case const_127:
               return uint(param1);
            case const_130:
               return param1.split(const_1219);
            default:
               return String(param1);
         }
      }
      
      public static function parseValueType(param1:XML, param2:String) : Object
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         switch(param2)
         {
            case const_49:
               return String(param1);
            case const_229:
               _loc4_ = new Point();
               _loc4_.x = Number(param1.attribute(X));
               _loc4_.y = Number(param1.attribute(const_907));
               return _loc4_;
            case const_252:
               _loc5_ = new Rectangle();
               _loc5_.x = Number(param1.attribute(X));
               _loc5_.y = Number(param1.attribute(const_907));
               _loc5_.width = Number(param1.attribute(const_1226));
               _loc5_.height = Number(param1.attribute(HEIGHT));
               return _loc5_;
            case const_130:
               _loc3_ = new Map();
               parseVariableList(param1.children(),_loc3_);
               _loc6_ = new Array();
               for(_loc7_ in _loc3_)
               {
                  _loc6_.push(_loc3_[_loc7_]);
               }
               return _loc6_;
            case const_224:
               _loc3_ = new Map();
               XMLVariableParser.parseVariableList(param1.children(),_loc3_);
               return _loc3_;
            default:
               throw new Error("Unable to parse data type \"" + param2 + "\", unknown type!");
         }
      }
   }
}
