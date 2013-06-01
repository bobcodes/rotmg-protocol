package com.company.assembleegameclient.util
{
[CLASS845]   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;


   public class Gejugut extends Object
   {
      public function Gejugut(param1:BitmapData, param2:BitmapData) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.image_=param1;
         this.mask_=param2;
         return;
      }

      public var image_:BitmapData;

      public var mask_:BitmapData;

      public function width() : int {
         return this.image_.width;
      }

      public function height() : int {
         return this.image_.height;
      }

      public function mirror(param1:int=0) : Gejugut {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:BitmapData = BitmapUtil.mirror(this.image_,param1);
         var _loc3_:BitmapData = this.mask_==null?null:BitmapUtil.mirror(this.mask_,param1);
         return new Gejugut(_loc2_,_loc3_);
      }

      public function gopykaqe() : Number {
         return BitmapUtil.gopykaqe(this.image_);
      }
   }
[/CLASS]
}