package com.company.assembleegameclient.engine3d
{
[CLASS1531]   import __AS3__.vec.Vector;
   import flash.display.GraphicsEndFill;
   import flash.display.GraphicsPathCommand;
   import flash.geom.Vector3D;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsSolidFill;
   import flash.display.IGraphicsData;
   import flash.geom.Matrix3D;
   import com.company.assembleegameclient.map.Fot;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Utils3D;
   import com.company.util.Trig;


   public class Gyvafo extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Gyvafo(param1:Number) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.size_=param1;
         return;
      }

      private static const nicam:Vector.<int> = new Vector.<int>(4);

      private static const END_FILL:GraphicsEndFill = new GraphicsEndFill();

      public var size_:Number;

      public var meluhykag:Vector3D;

      private const data_:Vector.<Number> = new Vector.<Number>();

      private const path_:GraphicsPath = new GraphicsPath(nicam,this.data_);

      private const bitmapFill_:GraphicsBitmapFill = new GraphicsBitmapFill(null,new Matrix(),false,false);

      private const bizegik:GraphicsSolidFill = new GraphicsSolidFill(0,1);

      public function setSize(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size_=param1;
         return;
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Vector3D, param3:Number, param4:Matrix3D, param5:Fot, param6:BitmapData, param7:uint=0) : void {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Matrix = null;
         this.meluhykag=Utils3D.projectVector(param4,param2);
         if(this.meluhykag.w<0)
         {
            return;
         }
         var _loc8_:Number = this.meluhykag.w*Math.sin(param5.jinuluku.fieldOfView/2*Trig.lymiquwo);
         var _loc9_:Number = this.size_/_loc8_;
         this.data_.length=0;
         if(param3==0)
         {
            this.data_.push(this.meluhykag.x-_loc9_,this.meluhykag.y-_loc9_,this.meluhykag.x+_loc9_,this.meluhykag.y-_loc9_,this.meluhykag.x+_loc9_,this.meluhykag.y+_loc9_,this.meluhykag.x-_loc9_,this.meluhykag.y+_loc9_);
         }
         else
         {
            _loc10_=Math.cos(param3);
            _loc11_=Math.sin(param3);
            this.data_.push(this.meluhykag.x+(_loc10_*-_loc9_+_loc11_*-_loc9_),this.meluhykag.y+(_loc11_*-_loc9_-_loc10_*-_loc9_),this.meluhykag.x+(_loc10_*_loc9_+_loc11_*-_loc9_),this.meluhykag.y+(_loc11_*_loc9_-_loc10_*-_loc9_),this.meluhykag.x+(_loc10_*_loc9_+_loc11_*_loc9_),this.meluhykag.y+(_loc11_*_loc9_-_loc10_*_loc9_),this.meluhykag.x+(_loc10_*-_loc9_+_loc11_*_loc9_),this.meluhykag.y+(_loc11_*-_loc9_-_loc10_*_loc9_));
         }
         if(param6!=null)
         {
            this.bitmapFill_.bitmapData=param6;
            _loc12_=this.bitmapFill_.matrix;
            _loc12_.identity();
            _loc12_.scale(2*_loc9_/param6.width,2*_loc9_/param6.height);
            _loc12_.translate(-_loc9_,-_loc9_);
            _loc12_.rotate(param3);
            _loc12_.translate(this.meluhykag.x,this.meluhykag.y);
            param1.push(this.bitmapFill_);
         }
         else
         {
            this.bizegik.color=param7;
            param1.push(this.bizegik);
         }
         param1.push(this.path_);
         param1.push(END_FILL);
         return;
      }
   }
[/CLASS]
}