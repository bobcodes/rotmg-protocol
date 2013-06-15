package com.company.util
{
   import flash.geom.ColorTransform;


   public class MoreColorUtil extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function MoreColorUtil(param1:StaticEnforcer) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         return;
      }

      public static function jyjak(param1:Number, param2:Number, param3:Number) : int {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc4_:int = int(param1/60)%6;
         var _loc5_:Number = param1/60-Math.floor(param1/60);
         var _loc6_:Number = param3*(1-param2);
         var _loc7_:Number = param3*(1-_loc5_*param2);
         var _loc8_:Number = param3*(1-(1-_loc5_)*param2);
         switch(null)
         {
            case 0:
               _loc9_=param3;
               _loc10_=_loc8_;
               _loc11_=_loc6_;
               break;
            case 1:
               _loc9_=_loc7_;
               _loc10_=param3;
               _loc11_=_loc6_;
               break;
            case 2:
               _loc9_=_loc6_;
               _loc10_=param3;
               _loc11_=_loc8_;
               break;
            case 3:
               _loc9_=_loc6_;
               _loc10_=_loc7_;
               _loc11_=param3;
               break;
            case 4:
               _loc9_=_loc8_;
               _loc10_=_loc6_;
               _loc11_=param3;
               break;
            case 5:
               _loc9_=param3;
               _loc10_=_loc6_;
               _loc11_=_loc7_;
               break;
         }
         return int(Math.min(255,Math.floor(_loc9_*255)))<<16|int(Math.min(255,Math.floor(_loc10_*255)))<<8|int(Math.min(255,Math.floor(_loc11_*255)));
      }

      public static function ripim() : uint {
         return uint(16777215*Math.random());
      }

      public static function randomColor32() : uint {
         return uint(16777215*Math.random())|4.27819008E9;
      }

      public static function soqywe(param1:ColorTransform, param2:uint) : uint {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:int = ((param2&16711680)>>16)*param1.redMultiplier+param1.redOffset;
         _loc3_=_loc3_<0?0:_loc3_>255?255:_loc3_;
         var _loc4_:int = ((param2&65280)>>8)*param1.greenMultiplier+param1.greenOffset;
         _loc4_=_loc4_<0?0:_loc4_>255?255:_loc4_;
         var _loc5_:int = (param2&255)*param1.blueMultiplier+param1.blueOffset;
         _loc5_=_loc5_<0?0:_loc5_>255?255:_loc5_;
         return _loc3_<<16|_loc4_<<8|_loc5_;
      }

      public static function qapudeh(param1:ColorTransform) : ColorTransform {
         return new ColorTransform(param1.redMultiplier,param1.greenMultiplier,param1.blueMultiplier,param1.alphaMultiplier,param1.redOffset,param1.greenOffset,param1.blueOffset,param1.alphaOffset);
      }

      public static function vonyvudyk(param1:ColorTransform, param2:ColorTransform, param3:Number) : ColorTransform {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(param1==null)
         {
            param1=identity;
         }
         if(param2==null)
         {
            param2=identity;
         }
         var _loc4_:Number = 1-param3;
         var _loc5_:ColorTransform = new ColorTransform(param1.redMultiplier*_loc4_+param2.redMultiplier*param3,param1.greenMultiplier*_loc4_+param2.greenMultiplier*param3,param1.blueMultiplier*_loc4_+param2.blueMultiplier*param3,param1.alphaMultiplier*_loc4_+param2.alphaMultiplier*param3,param1.redOffset*_loc4_+param2.redOffset*param3,param1.greenOffset*_loc4_+param2.greenOffset*param3,param1.blueOffset*_loc4_+param2.blueOffset*param3,param1.alphaOffset*_loc4_+param2.alphaOffset*param3);
         return _loc5_;
      }

      public static function modib(param1:uint, param2:uint, param3:Number) : uint {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc4_:Number = 1-param3;
         var _loc5_:uint = param1>>24&255;
         var _loc6_:uint = param1>>16&255;
         var _loc7_:uint = param1>>8&255;
         var _loc8_:uint = param1&255;
         var _loc9_:uint = param2>>24&255;
         var _loc10_:uint = param2>>16&255;
         var _loc11_:uint = param2>>8&255;
         var _loc12_:uint = param2&255;
         var _loc13_:uint = _loc5_*_loc4_+_loc9_*param3;
         var _loc14_:uint = _loc6_*_loc4_+_loc10_*param3;
         var _loc15_:uint = _loc7_*_loc4_+_loc11_*param3;
         var _loc16_:uint = _loc8_*_loc4_+_loc12_*param3;
         var _loc17_:uint = _loc13_<<24|_loc14_<<16|_loc15_<<8|_loc16_;
         return _loc17_;
      }

      public static function gopeqyt(param1:ColorTransform, param2:Number) : Number {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:uint = param2*255;
         var _loc4_:uint = _loc3_*param1.alphaMultiplier+param1.alphaOffset;
         _loc4_=_loc4_<0?0:_loc4_>255?255:_loc4_;
         return _loc4_/255;
      }

      public static function qun(param1:uint, param2:Number) : uint {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:int = ((param1&16711680)>>16)*param2;
         _loc3_=_loc3_<0?0:_loc3_>255?255:_loc3_;
         var _loc4_:int = ((param1&65280)>>8)*param2;
         _loc4_=_loc4_<0?0:_loc4_>255?255:_loc4_;
         var _loc5_:int = (param1&255)*param2;
         _loc5_=_loc5_<0?0:_loc5_>255?255:_loc5_;
         return _loc3_<<16|_loc4_<<8|_loc5_;
      }

      public static function mazike(param1:uint, param2:Number) : uint {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:uint = param1&4.27819008E9;
         var _loc4_:int = ((param1&16711680)>>16)+param2*255;
         _loc4_=_loc4_<0?0:_loc4_>255?255:_loc4_;
         var _loc5_:int = ((param1&65280)>>8)+param2*255;
         _loc5_=_loc5_<0?0:_loc5_>255?255:_loc5_;
         var _loc6_:int = (param1&255)+param2*255;
         _loc6_=_loc6_<0?0:_loc6_>255?255:_loc6_;
         return _loc3_|_loc4_<<16|_loc5_<<8|_loc6_;
      }

      public static function fepa(param1:uint) : Array {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = (param1>>24&255)/256;
         return [_loc2_*(param1>>16&255)/256,_loc2_*(param1>>8&255)/256,_loc2_*(param1&255)/256,_loc2_];
      }

      public static function woqupoj(param1:uint) : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:uint = ((param1&16711680)>>16)*0.3+((param1&65280)>>8)*0.59+(param1&255)*0.11;
         return ((param1)&&(4.27819008E9))|_loc2_<<16|_loc2_<<8|_loc2_;
      }

      public static function rojezukul(param1:uint) : Array {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return [0.0,0.0,0.0,0.0,(param1&16711680)>>16,0.0,0.0,0.0,0.0,(param1&65280)>>8,0.0,0.0,0.0,0.0,param1&255,0.0,0.0,0.0,1,0.0];
      }

      public static const fuguwo:Array = [0.3,0.59,0.11,0.0,0.0,0.3,0.59,0.11,0.0,0.0,0.3,0.59,0.11,0.0,0.0,0.0,0.0,0.0,1,0.0];

      public static const nyweba:Array = [0.3,0.59,0.11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1,0.0];

      public static const identity:ColorTransform = new ColorTransform();

      public static const invisible:ColorTransform = new ColorTransform(1,1,1,0,0,0,0,0);

      public static const tosajycyf:ColorTransform = new ColorTransform(1,1,1,0.3,0,0,0,0);

      public static const rupaj:ColorTransform = new ColorTransform(1,1,1,0.7,0,0,0,0);

      public static const qawalim:ColorTransform = new ColorTransform(0.6,1,0.6,1,0,0,0,0);

      public static const mihatupyd:ColorTransform = new ColorTransform(0.8,1,0.8,1,0,0,0,0);

      public static const vydogow:ColorTransform = new ColorTransform(0.2,1,0.2,1,0,100,0,0);

      public static const daz:ColorTransform = new ColorTransform(0.5,1,0.5,0.3,0,0,0,0);

      public static const socyvaco:ColorTransform = new ColorTransform(0.3,1,0.3,0.5,0,0,0,0);

      public static const wuduwonoj:ColorTransform = new ColorTransform(1,0.5,0.5,1,0,0,0,0);

      public static const lucyk:ColorTransform = new ColorTransform(1,0.7,0.7,1,0,0,0,0);

      public static const jigozo:ColorTransform = new ColorTransform(1,0.2,0.2,1,100,0,0,0);

      public static const diguleg:ColorTransform = new ColorTransform(1,0.5,0.5,0.3,0,0,0,0);

      public static const hiqecyfano:ColorTransform = new ColorTransform(1,0.3,0.3,0.5,0,0,0,0);

      public static const gecacuke:ColorTransform = new ColorTransform(0.5,0.5,1,1,0,0,0,0);

      public static const bojet:ColorTransform = new ColorTransform(0.7,0.7,1,1,0,0,100,0);

      public static const cagoko:ColorTransform = new ColorTransform(0.3,0.3,1,1,0,0,100,0);

      public static const vohafih:ColorTransform = new ColorTransform(0.5,0.5,1,0.3,0,0,0,0);

      public static const kemycely:ColorTransform = new ColorTransform(0.3,0.3,1,0.5,0,0,0,0);

      public static const reheloso:ColorTransform = new ColorTransform(1,0.5,1,1,0,0,0,0);

      public static const hocerijow:ColorTransform = new ColorTransform(1,0.2,1,1,100,0,100,0);

      public static const golanehud:ColorTransform = new ColorTransform(0.6,0.6,0.6,1,0,0,0,0);

      public static const mimy:ColorTransform = new ColorTransform(0.4,0.4,0.4,1,0,0,0,0);

      public static const nadebari:ColorTransform = new ColorTransform(1,1,1,1,255,255,255,0);
   }

}

   class StaticEnforcer extends Object
   {
      function StaticEnforcer() {
         super();
         return;
      }
   }
