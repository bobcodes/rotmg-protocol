package com.company.assembleegameclient.engine3d
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import __AS3__.vec.Vector;


   public class TextureMatrix extends Object
   {
      public function TextureMatrix(param1:BitmapData, param2:Vector.<Number>) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.tToS_=new Matrix();
         this.tempMatrix_=new Matrix();
         super();
         this.texture_=param1;
         this.losunizo(param2);
         return;
      }

      public var texture_:BitmapData = null;

      public var tToS_:Matrix;

      private var jevifak:Matrix = null;

      private var tempMatrix_:Matrix;

      public function sizane(param1:Vector.<Number>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.losunizo(param1);
         return;
      }

      public function fuduviku(param1:Vector.<Number>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.calculateTextureMatrix(param1);
         return;
      }

      public function calculateTextureMatrix(param1:Vector.<Number>) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.tToS_.a=this.jevifak.a;
         this.tToS_.b=this.jevifak.b;
         this.tToS_.c=this.jevifak.c;
         this.tToS_.d=this.jevifak.d;
         this.tToS_.tx=this.jevifak.tx;
         this.tToS_.ty=this.jevifak.ty;
         var _loc2_:int = param1.length-2;
         var _loc3_:int = _loc2_+1;
         this.tempMatrix_.a=param1[2]-param1[0];
         this.tempMatrix_.b=param1[3]-param1[1];
         this.tempMatrix_.c=param1[_loc2_]-param1[0];
         this.tempMatrix_.d=param1[_loc3_]-param1[1];
         this.tempMatrix_.tx=param1[0];
         this.tempMatrix_.ty=param1[1];
         this.tToS_.concat(this.tempMatrix_);
         return;
      }

      public function losunizo(param1:Vector.<Number>) : void {
         var _loc13_:* = false;
         var _loc14_:* = true;
         if(this.texture_==null)
         {
            this.jevifak=null;
            return;
         }
         var _loc2_:int = param1.length-3;
         var _loc3_:Number = param1[0]*this.texture_.width;
         var _loc4_:Number = param1[1]*this.texture_.height;
         var _loc5_:Number = param1[3]*this.texture_.width;
         var _loc6_:Number = param1[4]*this.texture_.height;
         var _loc7_:Number = param1[_loc2_]*this.texture_.width;
         var _loc8_:Number = param1[_loc2_+1]*this.texture_.height;
         var _loc9_:Number = _loc5_-_loc3_;
         var _loc10_:Number = _loc6_-_loc4_;
         var _loc11_:Number = _loc7_-_loc3_;
         var _loc12_:Number = _loc8_-_loc4_;
         this.jevifak=new Matrix(_loc9_,_loc10_,_loc11_,_loc12_,_loc3_,_loc4_);
         this.jevifak.invert();
         return;
      }
   }

}