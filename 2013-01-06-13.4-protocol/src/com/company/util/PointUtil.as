package com.company.util
{
[CLASS870]   import flash.geom.Point;


   public class PointUtil extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function PointUtil(param1:StaticEnforcer) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         return;
      }

      public static const tirumyf:Point = new Point(0,0);

      public static function dimefyk(param1:Point) : Point {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Point = param1.clone();
         _loc2_.x=Math.round(_loc2_.x);
         _loc2_.y=Math.round(_loc2_.y);
         return _loc2_;
      }

      public static function kycazewu(param1:Point, param2:Point) : Number {
         return hakimo(param1.x,param1.y,param2.x,param2.y);
      }

      public static function hakimo(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:Number = param3-param1;
         var _loc6_:Number = param4-param2;
         return _loc5_*_loc5_+_loc6_*_loc6_;
      }

      public static function kijuvaq(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:Number = param3-param1;
         var _loc6_:Number = param4-param2;
         return Math.sqrt(_loc5_*_loc5_+_loc6_*_loc6_);
      }

      public static function butybuqiwi(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Point {
         return new Point(param1+(param3-param1)*param5,param2+(param4-param2)*param5);
      }

      public static function cesarubo(param1:Point, param2:Point) : Number {
         return Math.atan2(param2.y-param1.y,param2.x-param1.x);
      }

      public static function pymycydi(param1:Point, param2:Number, param3:Number) : Point {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Point = new Point();
         _loc4_.x=param1.x+param3*Math.cos(param2);
         _loc4_.y=param1.y+param3*Math.sin(param2);
         return _loc4_;
      }
   }
[/CLASS]
}[CLASS871]

   class StaticEnforcer extends Object
   {
      function StaticEnforcer() {
         super();
         return;
      }
   }
[/CLASS]