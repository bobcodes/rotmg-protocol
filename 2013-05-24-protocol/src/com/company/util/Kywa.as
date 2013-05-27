package com.company.util
{
   import flash.geom.Point;


   public class Kywa extends Object
   {
      public function Kywa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function semecyw(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : Point {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc9_:Number = (param8-param6)*(param3-param1)-(param7-param5)*(param4-param2);
         if(_loc9_==0)
         {
            return null;
         }
         var _loc10_:Number = ((param7-param5)*(param2-param6)-(param8-param6)*(param1-param5))/_loc9_;
         var _loc11_:Number = ((param3-param1)*(param2-param6)-(param4-param2)*(param1-param5))/_loc9_;
         if(_loc10_>1||_loc10_<0.0||_loc11_>1||_loc11_<0.0)
         {
            return null;
         }
         var _loc12_:Point = new Point(param1+_loc10_*(param3-param1),param2+_loc10_*(param4-param2));
         return _loc12_;
      }

      public static function pojut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Number {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc7_:Number = param5-param3;
         var _loc8_:Number = param6-param4;
         var _loc9_:Number = _loc7_*_loc7_+_loc8_*_loc8_;
         if(_loc9_<0.001)
         {
            _loc10_=param3;
            _loc11_=param4;
         }
         else
         {
            _loc12_=((param1-param3)*_loc7_+(param2-param4)*_loc8_)/_loc9_;
            if(_loc12_<0.0)
            {
               _loc10_=param3;
               _loc11_=param4;
            }
            else
            {
               if(_loc12_>1)
               {
                  _loc10_=param5;
                  _loc11_=param6;
               }
               else
               {
                  _loc10_=param3+_loc12_*_loc7_;
                  _loc11_=param4+_loc12_*_loc8_;
               }
            }
         }
         _loc7_=param1-_loc10_;
         _loc8_=param2-_loc11_;
         return Math.sqrt(_loc7_*_loc7_+_loc8_*_loc8_);
      }
   }

}