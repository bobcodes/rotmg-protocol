package com.company.util
{
   import flash.display.BitmapData;
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

      public static function nocoqiz(param1:BitmapData, param2:int) : BitmapData {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Matrix = new Matrix();
         _loc3_.translate(-param1.width/2,-param1.height/2);
         _loc3_.rotate(param2*Math.PI/2);
         _loc3_.translate(param1.height/2,param1.width/2);
         var _loc4_:BitmapData = new BitmapData(param1.height,param1.width,true,0);
         _loc4_.draw(param1,_loc3_);
         return _loc4_;
      }

      public static function kodopomid(param1:BitmapData, param2:int, param3:int, param4:int, param5:int) : BitmapData {
         var _loc6_:BitmapData = new BitmapData(param4,param5);
         _loc6_.copyPixels(param1,new Rectangle(param2,param3,param4,param5),new Point(0,0));
         return _loc6_;
      }

      public static function coze(param1:BitmapData) : Number {
         var [OFS3]_loc6_:* = [/OFS]false;
         var [OFS5]_loc7_:* = [/OFS]true;
         var [OFS11]_loc4_:* = [/OFS][OFS9]0[/OFS];
         var [OFS15]_loc5_:* = [/OFS][OFS13]0[/OFS];
         var [OFS19]_loc2_:* = [/OFS][OFS17]0[/OFS];
         var [OFS22]_loc3_:* = [/OFS][OFS20]0[/OFS];
         while([OFS72]_loc3_[/OFS][OFS76]<[/OFS][OFS73]param1[/OFS].[OFS74]width[/OFS])
         {
            [OFS30]_loc4_=[/OFS][OFS28]0[/OFS];
            while([OFS61]_loc4_[/OFS][OFS66]<[/OFS][OFS63]param1[/OFS].[OFS64]height[/OFS])
            {
               [OFS49]_loc5_=[/OFS][OFS37]param1[/OFS].[OFS41]getPixel32[/OFS][OFS41]([/OFS][OFS38]_loc3_[/OFS][OFS41],[/OFS][OFS39]_loc4_[/OFS][OFS41])[/OFS][OFS47]&[/OFS][OFS45]4.27819008E9[/OFS];
               if([OFS48]_loc5_[/OFS][OFS53]==[/OFS][OFS51]0[/OFS])
               {
                  _loc2_[OFS57]++[/OFS];
               }
               _loc4_[OFS59]++[/OFS];
            }
            _loc3_[OFS70]++[/OFS];
         }
         [OFS89]return [/OFS][OFS80]_loc2_[/OFS][OFS88]/[/OFS][OFS81]param1[/OFS].[OFS82]width[/OFS][OFS87]*[/OFS][OFS84]param1[/OFS].[OFS85]height[/OFS];
      }

      public static function jemirus(param1:BitmapData) : uint {
         var [OFS2]_loc13_:* = [/OFS]true;
         var [OFS4]_loc14_:* = [/OFS]false;
         var [OFS11]_loc3_:uint = [/OFS][OFS8]0[/OFS];
         var [OFS14]_loc7_:String = [/OFS][OFS12]null[/OFS];
         var [OFS18]_loc8_:* = [/OFS][OFS16]0[/OFS];
         var [OFS22]_loc9_:* = [/OFS][OFS20]0[/OFS];
         var [OFS31]_loc2_:Dictionary = [/OFS][OFS26]new [/OFS][OFS26]Dictionary[/OFS][OFS26]([/OFS][OFS26])[/OFS];
         var [OFS34]_loc4_:* = [/OFS][OFS32]0[/OFS];
         while([OFS138]_loc4_[/OFS][OFS143]<[/OFS][OFS140]param1[/OFS].[OFS141]width[/OFS])
         {
            [OFS43]_loc8_=[/OFS][OFS41]0[/OFS];
            while([OFS127]_loc8_[/OFS][OFS132]<[/OFS][OFS129]param1[/OFS].[OFS130]width[/OFS])
            {
               [OFS60]_loc3_=[/OFS][OFS50]param1[/OFS].[OFS55]getPixel32[/OFS][OFS55]([/OFS][OFS51]_loc4_[/OFS][OFS55],[/OFS][OFS53]_loc8_[/OFS][OFS55])[/OFS];
               if(([OFS61]_loc3_[/OFS][OFS64]&[/OFS][OFS62]4.27819008E9[/OFS])[OFS67]==[/OFS][OFS65]0[/OFS])
               {
               }
               else
               {
                  if(![OFS75]_loc2_[/OFS].[OFS77]hasOwnProperty[/OFS][OFS77]([/OFS][OFS76]_loc3_[/OFS][OFS77])[/OFS])
                  {
                     [OFS85]_loc2_[/OFS][[OFS86]_loc3_[/OFS]][OFS89]=[/OFS][OFS87]1[/OFS];
                  }
                  else
                  {
                     [OFS96]_loc2_[/OFS][[OFS100]_loc3_[/OFS]][OFS116]++[/OFS];
                  }
               }
               _loc8_[OFS125]++[/OFS];
            }
            _loc4_[OFS136]++[/OFS];
         }
         var [OFS150]_loc5_:uint = [/OFS][OFS147]0[/OFS];
         var [OFS155]_loc6_:uint = [/OFS][OFS152]0[/OFS];
         for (_loc7_ in [OFS161]_loc2_[/OFS])
         {
            [OFS186]_loc3_=[/OFS][OFS182]uint[/OFS][OFS182]([/OFS][OFS180]_loc7_[/OFS][OFS182])[/OFS];
            [OFS195]_loc9_=[/OFS][OFS187]_loc2_[/OFS][[OFS188]_loc7_[/OFS]];
            if([OFS194]_loc9_[/OFS][OFS199]>[/OFS][OFS197]_loc6_[/OFS]||[OFS206]_loc9_[/OFS][OFS210]==[/OFS][OFS208]_loc6_[/OFS]&&[OFS217]_loc3_[/OFS][OFS220]>[/OFS][OFS218]_loc5_[/OFS])
            {
               [OFS227]_loc5_=[/OFS][OFS225]_loc3_[/OFS];
               [OFS232]_loc6_=[/OFS][OFS229]_loc9_[/OFS];
            }
         }
         [OFS247]return [/OFS][OFS245]_loc5_[/OFS];
      }

      public static function puw(param1:BitmapData, param2:IntPoint, param3:IntPoint) : Boolean {
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

}

   class StaticEnforcer extends Object
   {
      function StaticEnforcer() {
         super();
         return;
      }
   }
