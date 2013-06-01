package com.company.util
{
[CLASS890]   import __AS3__.vec.Vector;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.geom.Vector3D;


   public class ConversionUtil extends Object
   {
      public function ConversionUtil(param1:StaticEnforcer) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         return;
      }

      public static function habij(param1:Object, param2:String=",") : Array {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param1==null)
         {
            return new Array();
         }
         var _loc3_:Array = param1.toString().split(param2).map(cymysynek);
         return _loc3_;
      }

      public static function quveny(param1:Object, param2:String=",") : Array {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1==null)
         {
            return new Array();
         }
         var _loc3_:Array = param1.toString().split(param2).map(mapParseFloat);
         return _loc3_;
      }

      public static function dapani(param1:Object, param2:String=",") : Vector.<int> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1==null)
         {
            return new Vector.<int>();
         }
         var _loc3_:Vector.<int> = Vector.<int>(param1.toString().split(param2).map(cymysynek));
         return _loc3_;
      }

      public static function nezop(param1:Object, param2:String=",") : Vector.<Number> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1==null)
         {
            return new Vector.<Number>();
         }
         var _loc3_:Vector.<Number> = Vector.<Number>(param1.toString().split(param2).map(mapParseFloat));
         return _loc3_;
      }

      public static function bevonot(param1:Object, param2:String=",") : Array {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1==null)
         {
            return new Array();
         }
         var _loc3_:Array = param1.toString().split(param2);
         return _loc3_;
      }

      public static function disotikuf(param1:Object, param2:String=",") : Rectangle {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param1==null)
         {
            return new Rectangle();
         }
         var _loc3_:Array = param1.toString().split(param2).map(mapParseFloat);
         return _loc3_==null||_loc3_.length<4?new Rectangle():new Rectangle(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]);
      }

      public static function pirocihic(param1:Object, param2:String=",") : Point {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1==null)
         {
            return new Point();
         }
         var _loc3_:Array = param1.toString().split(param2).map(ConversionUtil.mapParseFloat);
         return _loc3_==null||_loc3_.length<2?new Point():new Point(_loc3_[0],_loc3_[1]);
      }

      public static function fuwejid(param1:Object, param2:String=",") : Array {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Array = new Array();
         if(param1==null)
         {
            _loc3_.push(new Point());
            _loc3_.push(new Point());
            return _loc3_;
         }
         var _loc4_:Array = param1.toString().split(param2).map(ConversionUtil.mapParseFloat);
         if(_loc4_==null||_loc4_.length<4)
         {
            _loc3_.push(new Point());
            _loc3_.push(new Point());
            return _loc3_;
         }
         _loc3_.push(new Point(_loc4_[0],_loc4_[1]));
         _loc3_.push(new Point(_loc4_[2],_loc4_[3]));
         return _loc3_;
      }

      public static function digyw(param1:Object, param2:String=",") : Vector3D {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1==null)
         {
            return new Vector3D();
         }
         var _loc3_:Array = param1.toString().split(param2).map(ConversionUtil.mapParseFloat);
         return _loc3_==null||_loc3_.length<3?new Vector3D():new Vector3D(_loc3_[0],_loc3_[1],_loc3_[2]);
      }

      public static function bod(param1:Object, param2:String=",") : Vector.<int> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1==null)
         {
            return new Vector.<int>();
         }
         var _loc3_:Vector.<int> = Vector.<int>(param1.toString().split(param2).map(bazujifev));
         return _loc3_;
      }

      public static function piziroc(param1:Object, param2:Vector.<Number>, param3:String=",") : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:* = NaN;
         if(param1==null)
         {
            return;
         }
         var _loc4_:Array = param1.toString().split(param3).map(mapParseFloat);
         for each (_loc5_ in _loc4_)
         {
            param2.push(_loc5_);
         }
         return;
      }

      public static function cuweful(param1:Object, param2:Vector.<int>, param3:String=",") : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:* = 0;
         if(param1==null)
         {
            return;
         }
         var _loc4_:Array = param1.toString().split(param3).map(mapParseFloat);
         for each (_loc5_ in _loc4_)
         {
            param2.push(_loc5_);
         }
         return;
      }

      public static function mapParseFloat(param1:*, ... rest) : Number {
         return parseFloat(param1);
      }

      public static function cymysynek(param1:*, ... rest) : Number {
         return parseInt(param1);
      }

      public static function bazujifev(param1:*, ... rest) : Number {
         return String(param1).charCodeAt();
      }

      public static function vupugoru(param1:Vector3D) : Array {
         return [param1.x,param1.y,param1.z];
      }
   }
[/CLASS]
}[CLASS891]

   class StaticEnforcer extends Object
   {
      function StaticEnforcer() {
         super();
         return;
      }
   }
[/CLASS]