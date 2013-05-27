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
         this.homer(param2);
         return;
      }

      public var texture_:BitmapData = null;

      public var tToS_:Matrix;

      private var woqela:Matrix = null;

      private var tempMatrix_:Matrix;

      public function syb(param1:Vector.<Number>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.homer(param1);
         return;
      }

      public function vujylyfi(param1:Vector.<Number>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.calculateTextureMatrix(param1);
         return;
      }

      public function calculateTextureMatrix(param1:Vector.<Number>) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.tToS_.a=this.woqela.a;
         this.tToS_.b=this.woqela.b;
         this.tToS_.c=this.woqela.c;
         this.tToS_.d=this.woqela.d;
         this.tToS_.tx=this.woqela.tx;
         this.tToS_.ty=this.woqela.ty;
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

      public function homer(param1:Vector.<Number>) : void {
         var _loc13_:* = true;
         var _loc14_:* = false;
         if(this.texture_==null)
         {
            this.woqela=null;
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
         this.woqela=new Matrix(_loc9_,_loc10_,_loc11_,_loc12_,_loc3_,_loc4_);
         this.woqela.invert();
         return;
      }
   }

}