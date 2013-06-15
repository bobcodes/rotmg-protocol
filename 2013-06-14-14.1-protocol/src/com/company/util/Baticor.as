package com.company.util
{
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.geom.Matrix;


   public class Baticor extends Object
   {
      public function Baticor() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function dosuc(param1:Rectangle, param2:Number, param3:Number) : Number {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Number = param2;
         var _loc5_:Number = param3;
         if(_loc4_<param1.x)
         {
            _loc4_=param1.x;
         }
         else
         {
            if(_loc4_>param1.right)
            {
               _loc4_=param1.right;
            }
         }
         if(_loc5_<param1.y)
         {
            _loc5_=param1.y;
         }
         else
         {
            if(_loc5_>param1.bottom)
            {
               _loc5_=param1.bottom;
            }
         }
         if(_loc4_==param2&&_loc5_==param3)
         {
            return 0.0;
         }
         return PointUtil.nybomof(_loc4_,_loc5_,param2,param3);
      }

      public static function tybo(param1:Rectangle, param2:Number, param3:Number) : Point {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Number = param2;
         var _loc5_:Number = param3;
         if(_loc4_<param1.x)
         {
            _loc4_=param1.x;
         }
         else
         {
            if(_loc4_>param1.right)
            {
               _loc4_=param1.right;
            }
         }
         if(_loc5_<param1.y)
         {
            _loc5_=param1.y;
         }
         else
         {
            if(_loc5_>param1.bottom)
            {
               _loc5_=param1.bottom;
            }
         }
         return new Point(_loc4_,_loc5_);
      }

      public static function tige(param1:Rectangle, param2:Number, param3:Number, param4:Number, param5:Number) : Boolean {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         if(param1.left>param2&&param1.left>param4||param1.right<param2&&param1.right<param4||param1.top>param3&&param1.top>param5||param1.bottom<param3&&param1.bottom<param5)
         {
            return false;
         }
         if(param1.left<param2&&param2<param1.right&&param1.top<param3&&param3<param1.bottom||param1.left<param4&&param4<param1.right&&param1.top<param5&&param5<param1.bottom)
         {
            return true;
         }
         var _loc6_:Number = (param5-param3)/(param4-param2);
         var _loc7_:Number = param3-_loc6_*param2;
         if(_loc6_>0)
         {
            _loc8_=_loc6_*param1.left+_loc7_;
            _loc9_=_loc6_*param1.right+_loc7_;
         }
         else
         {
            _loc8_=_loc6_*param1.right+_loc7_;
            _loc9_=_loc6_*param1.left+_loc7_;
         }
         if(param3<param5)
         {
            _loc11_=param3;
            _loc10_=param5;
         }
         else
         {
            _loc11_=param5;
            _loc10_=param3;
         }
         var _loc12_:Number = _loc8_>_loc11_?_loc8_:_loc11_;
         var _loc13_:Number = _loc9_<_loc10_?_loc9_:_loc10_;
         return _loc12_<_loc13_&&!(_loc13_<param1.top||_loc12_>param1.bottom);
      }

      public static function vuhebo(param1:Rectangle, param2:Number, param3:Number, param4:Number, param5:Number, param6:Point) : Boolean {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         if(param4<=param1.x)
         {
            _loc7_=(param5-param3)/(param4-param2);
            _loc8_=param3-param2*_loc7_;
            _loc9_=_loc7_*param1.x+_loc8_;
            if(_loc9_>=param1.y&&_loc9_<=param1.y+param1.height)
            {
               param6.x=param1.x;
               param6.y=_loc9_;
               return true;
            }
         }
         else
         {
            if(param4>=param1.x+param1.width)
            {
               _loc7_=(param5-param3)/(param4-param2);
               _loc8_=param3-param2*_loc7_;
               _loc9_=_loc7_*(param1.x+param1.width)+_loc8_;
               if(_loc9_>=param1.y&&_loc9_<=param1.y+param1.height)
               {
                  param6.x=param1.x+param1.width;
                  param6.y=_loc9_;
                  return true;
               }
            }
         }
         if(param5<=param1.y)
         {
            _loc7_=(param4-param2)/(param5-param3);
            _loc8_=param2-param3*_loc7_;
            _loc10_=_loc7_*param1.y+_loc8_;
            if(_loc10_>=param1.x&&_loc10_<=param1.x+param1.width)
            {
               param6.x=_loc10_;
               param6.y=param1.y;
               return true;
            }
         }
         else
         {
            if(param5>=param1.y+param1.height)
            {
               _loc7_=(param4-param2)/(param5-param3);
               _loc8_=param2-param3*_loc7_;
               _loc10_=_loc7_*(param1.y+param1.height)+_loc8_;
               if(_loc10_>=param1.x&&_loc10_<=param1.x+param1.width)
               {
                  param6.x=_loc10_;
                  param6.y=param1.y+param1.height;
                  return true;
               }
            }
         }
         return false;
      }

      public static function jopyfujeh(param1:Rectangle, param2:IntPoint, param3:IntPoint) : Point {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(param3.x()<=param1.x)
         {
            _loc4_=(param3.y()-param2.y())/(param3.x()-param2.x());
            _loc5_=param2.y()-param2.x()*_loc4_;
            _loc6_=_loc4_*param1.x+_loc5_;
            if(_loc6_>=param1.y&&_loc6_<=param1.y+param1.height)
            {
               return new Point(param1.x,_loc6_);
            }
         }
         else
         {
            if(param3.x()>=param1.x+param1.width)
            {
               _loc4_=(param3.y()-param2.y())/(param3.x()-param2.x());
               _loc5_=param2.y()-param2.x()*_loc4_;
               _loc6_=_loc4_*(param1.x+param1.width)+_loc5_;
               if(_loc6_>=param1.y&&_loc6_<=param1.y+param1.height)
               {
                  return new Point(param1.x+param1.width,_loc6_);
               }
            }
         }
         if(param3.y()<=param1.y)
         {
            _loc4_=(param3.x()-param2.x())/(param3.y()-param2.y());
            _loc5_=param2.x()-param2.y()*_loc4_;
            _loc7_=_loc4_*param1.y+_loc5_;
            if(_loc7_>=param1.x&&_loc7_<=param1.x+param1.width)
            {
               return new Point(_loc7_,param1.y);
            }
         }
         else
         {
            if(param3.y()>=param1.y+param1.height)
            {
               _loc4_=(param3.x()-param2.x())/(param3.y()-param2.y());
               _loc5_=param2.x()-param2.y()*_loc4_;
               _loc7_=_loc4_*(param1.y+param1.height)+_loc5_;
               if(_loc7_>=param1.x&&_loc7_<=param1.x+param1.width)
               {
                  return new Point(_loc7_,param1.y+param1.height);
               }
            }
         }
         return null;
      }

      public static function nihelaj(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Hilar {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc9_:Point = null;
         var _loc11_:* = 0;
         var _loc6_:Matrix = new Matrix();
         _loc6_.translate(-param4/2,-param5/2);
         _loc6_.rotate(param3);
         _loc6_.translate(param1,param2);
         var _loc7_:Hilar = new Hilar();
         var _loc8_:Point = new Point();
         var _loc10_:* = 0;
         while(_loc10_<=1)
         {
            _loc11_=0;
            while(_loc11_<=1)
            {
               _loc8_.x=_loc10_*param4;
               _loc8_.y=_loc11_*param5;
               _loc9_=_loc6_.transformPoint(_loc8_);
               _loc7_.add(_loc9_.x,_loc9_.y);
               _loc11_++;
            }
            _loc10_++;
         }
         return _loc7_;
      }
   }

}