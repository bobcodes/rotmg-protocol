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


   public class Cinihel extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cinihel() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const zebifyf:Vector.<int> = new Vector.<int>(5);

      public static function pibyj() : int {
         return ObjectLibrary.vemociged.length*zebifyf.length;
      }

      public static function numStars(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<zebifyf.length&&param1>=zebifyf[_loc2_])
         {
            _loc2_++;
         }
         return _loc2_;
      }

      public static function nextStarFame(param1:int, param2:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:int = Math.max(param1,param2);
         var _loc4_:* = 0;
         while(_loc4_<zebifyf.length)
         {
            if(zebifyf[_loc4_]>_loc3_)
            {
               return zebifyf[_loc4_];
            }
            _loc4_++;
         }
         return -1;
      }

      private static const bojet:ColorTransform = new ColorTransform(138/255,152/255,222/255);

      private static const mitazew:ColorTransform = new ColorTransform(49/255,77/255,219/255);

      private static const wuduwonoj:ColorTransform = new ColorTransform(193/255,39/255,45/255);

      private static const qirehok:ColorTransform = new ColorTransform(247/255,147/255,30/255);

      private static const sonyvo:ColorTransform = new ColorTransform(255/255,255/255,0/255);

      public static const mygo:Vector.<ColorTransform> = new Vector.<ColorTransform>(5);

      public static function hofihufiq(param1:int) : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = mugupunuj(param1);
         _loc2_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         _loc2_.scaleX=1.4;
         _loc2_.scaleY=1.4;
         return _loc2_;
      }

      public static function mugupunuj(param1:int) : Sprite {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = new StarGraphic();
         if(param1<ObjectLibrary.vemociged.length)
         {
            _loc2_.transform.colorTransform=bojet;
         }
         else
         {
            if(param1<ObjectLibrary.vemociged.length*2)
            {
               _loc2_.transform.colorTransform=mitazew;
            }
            else
            {
               if(param1<ObjectLibrary.vemociged.length*3)
               {
                  _loc2_.transform.colorTransform=wuduwonoj;
               }
               else
               {
                  if(param1<ObjectLibrary.vemociged.length*4)
                  {
                     _loc2_.transform.colorTransform=qirehok;
                  }
                  else
                  {
                     if(param1<ObjectLibrary.vemociged.length*5)
                     {
                        _loc2_.transform.colorTransform=sonyvo;
                     }
                  }
               }
            }
         }
         return _loc2_;
      }

      public static function lifyqejo(param1:int) : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Sprite = null;
         var _loc3_:Sprite = null;
         _loc2_=mugupunuj(param1);
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

      public static function cinuwylo() : BitmapData {
         var _loc1_:BitmapData = AssetLibrary.tem("lofiObj3",224);
         return TextureRedrawer.redraw(_loc1_,40,true,0,0);
      }
   }

}