package com.company.util
{
[CLASS842]   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.utils.Dictionary;


   public class BitmapUtil extends Object
   {
      public function BitmapUtil(param1:StaticEnforcer) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         return;
      }

      public static function mirror(param1:BitmapData, param2:int=0) : BitmapData {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:* = 0;
         if(param2==0)
         {
            param2=param1.width;
         }
         var _loc3_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         var _loc4_:* = 0;
         while(_loc4_<param2)
         {
            _loc5_=0;
            while(_loc5_<param1.height)
            {
               _loc3_.setPixel32(param2-_loc4_-1,_loc5_,param1.getPixel32(_loc4_,_loc5_));
               _loc5_++;
            }
            _loc4_++;
         }
         return _loc3_;
      }

      public static function mozycewo(param1:BitmapData, param2:int) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Matrix = new Matrix();
         _loc3_.translate(-param1.width/2,-param1.height/2);
         _loc3_.rotate(param2*Math.PI/2);
         _loc3_.translate(param1.height/2,param1.width/2);
         var _loc4_:BitmapData = new BitmapData(param1.height,param1.width,true,0);
         _loc4_.draw(param1,_loc3_);
         return _loc4_;
      }

      public static function wukofy(param1:BitmapData, param2:int, param3:int, param4:int, param5:int) : BitmapData {
         var _loc6_:BitmapData = new BitmapData(param4,param5);
         _loc6_.copyPixels(param1,new Rectangle(param2,param3,param4,param5),new Point(0,0));
         return _loc6_;
      }

      public static function gopykaqe(param1:BitmapData) : Number {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_<param1.width)
         {
            _loc4_=0;
            while(_loc4_<param1.height)
            {
               _loc5_=param1.getPixel32(_loc3_,_loc4_)&4.27819008E9;
               if(_loc5_==0)
               {
                  _loc2_++;
               }
               _loc4_++;
            }
            _loc3_++;
         }
         return _loc2_/param1.width*param1.height;
      }

      public static function samav(param1:BitmapData) : uint {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc3_:uint = 0;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc2_:Dictionary = new Dictionary();
         var _loc4_:* = 0;
         while(_loc4_<param1.width)
         {
            _loc8_=0;
            while(_loc8_<param1.width)
            {
               _loc3_=param1.getPixel32(_loc4_,_loc8_);
               if((_loc3_&4.27819008E9)==0)
               {
               }
               else
               {
                  if(!_loc2_.hasOwnProperty(_loc3_))
                  {
                     _loc2_[_loc3_]=1;
                  }
                  else
                  {
                     _loc2_[_loc3_]++;
                  }
               }
               _loc8_++;
            }
            _loc4_++;
         }
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         for (_loc7_ in _loc2_)
         {
            _loc3_=uint(_loc7_);
            _loc9_=_loc2_[_loc7_];
            if(_loc9_>_loc6_||_loc9_==_loc6_&&_loc3_>_loc5_)
            {
               _loc5_=_loc3_;
               _loc6_=_loc9_;
            }
         }
         return _loc5_;
      }

      public static function fuzozabaf(param1:BitmapData, param2:IntPoint, param3:IntPoint) : Boolean {
         var _loc22_:* = true;
         var _loc23_:* = false;
         var _loc11_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:* = 0;
         var _loc21_:* = 0;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = param2.x();
         var _loc7_:int = param2.y();
         var _loc8_:int = param3.x();
         var _loc9_:int = param3.y();
         var _loc10_:* = (_loc7_>_loc9_?_loc7_-_loc9_:_loc9_-_loc7_)>(_loc6_>_loc8_?_loc6_-_loc8_:_loc8_-_loc6_);
         if(_loc10_)
         {
            _loc11_=_loc6_;
            _loc6_=_loc7_;
            _loc7_=_loc11_;
            _loc11_=_loc8_;
            _loc8_=_loc9_;
            _loc9_=_loc11_;
            _loc11_=_loc4_;
            _loc4_=_loc5_;
            _loc5_=_loc11_;
         }
         if(_loc6_>_loc8_)
         {
            _loc11_=_loc6_;
            _loc6_=_loc8_;
            _loc8_=_loc11_;
            _loc11_=_loc7_;
            _loc7_=_loc9_;
            _loc9_=_loc11_;
         }
         var _loc12_:int = _loc8_-_loc6_;
         var _loc13_:int = _loc7_>_loc9_?_loc7_-_loc9_:_loc9_-_loc7_;
         var _loc14_:int = -(_loc12_+1)/2;
         var _loc15_:int = _loc7_>_loc9_?-1:1;
         var _loc16_:int = _loc8_>_loc4_-1?_loc4_-1:_loc8_;
         var _loc17_:int = _loc7_;
         var _loc18_:int = _loc6_;
         if(_loc18_<0)
         {
            _loc14_=_loc14_+_loc13_*-_loc18_;
            if(_loc14_>=0)
            {
               _loc19_=_loc14_/_loc12_+1;
               _loc17_=_loc17_+_loc15_*_loc19_;
               _loc14_=_loc14_-_loc19_*_loc12_;
            }
            _loc18_=0;
         }
         if(_loc15_>0&&_loc17_<0||_loc15_<0&&_loc17_>=_loc5_)
         {
            _loc20_=_loc15_>0?-_loc17_-1:_loc17_-_loc5_;
            _loc14_=_loc14_-_loc12_*_loc20_;
            _loc21_=-_loc14_/_loc13_;
            _loc18_=_loc18_+_loc21_;
            _loc14_=_loc14_+_loc21_*_loc13_;
            _loc17_=_loc17_+_loc20_*_loc15_;
         }
         while(_loc18_<=_loc16_)
         {
            if(_loc15_>0&&_loc17_>=_loc5_||_loc15_<0&&_loc17_<0)
            {
               break;
            }
            if(_loc10_)
            {
               if(_loc17_>=0&&_loc17_<_loc5_&&param1.getPixel(_loc17_,_loc18_)==0)
               {
                  return false;
               }
            }
            else
            {
               if(_loc17_>=0&&_loc17_<_loc5_&&param1.getPixel(_loc18_,_loc17_)==0)
               {
                  return false;
               }
            }
            _loc14_=_loc14_+_loc13_;
            if(_loc14_>=0)
            {
               _loc17_=_loc17_+_loc15_;
               _loc14_=_loc14_-_loc12_;
            }
            _loc18_++;
         }
         return true;
      }
   }
[/CLASS]
}[CLASS843]

   class StaticEnforcer extends Object
   {
      function StaticEnforcer() {
         super();
         return;
      }
   }
[/CLASS]