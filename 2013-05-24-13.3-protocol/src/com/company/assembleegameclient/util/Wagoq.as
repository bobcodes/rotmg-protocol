package com.company.assembleegameclient.util
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.geom.ColorTransform;
   import flash.display.Sprite;
   import flash.filters.DropShadowFilter;
   import com.company.rotmg.graphics.StarGraphic;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;


   public class Wagoq extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wagoq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const qurubu:Vector.<int> = new Vector.<int>(5);

      public static function topowac() : int {
         return ObjectLibrary.supy.length*qurubu.length;
      }

      public static function numStars(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<qurubu.length&&param1>=qurubu[_loc2_])
         {
            _loc2_++;
         }
         return _loc2_;
      }

      public static function nextStarFame(param1:int, param2:int) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:int = Math.max(param1,param2);
         var _loc4_:* = 0;
         while(_loc4_<qurubu.length)
         {
            if(qurubu[_loc4_]>_loc3_)
            {
               return qurubu[_loc4_];
            }
            _loc4_++;
         }
         return -1;
      }

      private static const kyc:ColorTransform = new ColorTransform(138/255,152/255,222/255);

      private static const wesysun:ColorTransform = new ColorTransform(49/255,77/255,219/255);

      private static const nurijib:ColorTransform = new ColorTransform(193/255,39/255,45/255);

      private static const nimagano:ColorTransform = new ColorTransform(247/255,147/255,30/255);

      private static const lyzogewyb:ColorTransform = new ColorTransform(255/255,255/255,0/255);

      public static const zydi:Vector.<ColorTransform> = new Vector.<ColorTransform>(5);

      public static function deb(param1:int) : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = nub(param1);
         _loc2_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         _loc2_.scaleX=1.4;
         _loc2_.scaleY=1.4;
         return _loc2_;
      }

      public static function nub(param1:int) : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = new StarGraphic();
         if(param1<ObjectLibrary.supy.length)
         {
            _loc2_.transform.colorTransform=kyc;
         }
         else
         {
            if(param1<ObjectLibrary.supy.length*2)
            {
               _loc2_.transform.colorTransform=wesysun;
            }
            else
            {
               if(param1<ObjectLibrary.supy.length*3)
               {
                  _loc2_.transform.colorTransform=nurijib;
               }
               else
               {
                  if(param1<ObjectLibrary.supy.length*4)
                  {
                     _loc2_.transform.colorTransform=nimagano;
                  }
                  else
                  {
                     if(param1<ObjectLibrary.supy.length*5)
                     {
                        _loc2_.transform.colorTransform=lyzogewyb;
                     }
                  }
               }
            }
         }
         return _loc2_;
      }

      public static function lufequgy(param1:int) : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Sprite = null;
         var _loc3_:Sprite = null;
         _loc2_=nub(param1);
         _loc3_=new Sprite();
         _loc3_.graphics.beginFill(0,0.4);
         var _loc4_:int = _loc2_.width/2+2;
         var _loc5_:int = _loc2_.height/2+2;
         _loc3_.graphics.drawCircle(_loc4_,_loc5_,_loc4_);
         _loc2_.x=2;
         _loc2_.y=1;
         _loc3_.addChild(_loc2_);
         _loc3_.filters=[new DropShadowFilter(0,0,0,0.5,6,6,1)];
         return _loc3_;
      }

      public static function qem() : BitmapData {
         var _loc1_:BitmapData = AssetLibrary.jeqycu("lofiObj3",224);
         return TextureRedrawer.redraw(_loc1_,40,true,0,0);
      }
   }

}