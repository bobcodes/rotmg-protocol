package com.company.assembleegameclient.map
{
   import com.company.assembleegameclient.engine3d.Face3D;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.BitmapData;


   public class Lypapym extends Object
   {
      public function Lypapym(param1:BitmapData, param2:Vector.<Number>, param3:Number, param4:Number, param5:int, param6:Number, param7:Number) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         super();
         this.face_=new Face3D(param1,param2,Square.qewilaler.concat());
         this.mimacegus=param3;
         this.zogawuzo=param4;
         if(!(this.mimacegus==0)||!(this.zogawuzo==0))
         {
            this.face_.savoc.length=0;
            this.face_.savoc.push(0+this.mimacegus,0+this.zogawuzo,0,1+this.mimacegus,0+this.zogawuzo,0,1+this.mimacegus,1+this.zogawuzo,0,0+this.mimacegus,1+this.zogawuzo,0);
            this.face_.syb(this.face_.savoc);
            this.face_.bitmapFill_.repeat=true;
         }
         this.animate_=param5;
         if(this.animate_!=Lepuro.bad)
         {
            this.face_.bitmapFill_.repeat=true;
         }
         this.animateDx_=param6;
         this.animateDy_=param7;
         return;
      }

      public var animate_:int;

      public var face_:Face3D;

      public var mimacegus:Number = 0;

      public var zogawuzo:Number = 0;

      public var animateDx_:Number = 0;

      public var animateDy_:Number = 0;

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.face_.dispose();
         this.face_=null;
         return;
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.animate_!=Lepuro.bad)
         {
            _loc4_=0;
            _loc5_=0;
            switch(this.animate_)
            {
               case Lepuro.husuha:
                  _loc4_=this.mimacegus+Math.sin(this.animateDx_*param3/1000);
                  _loc5_=this.zogawuzo+Math.sin(this.animateDy_*param3/1000);
                  break;
               case Lepuro.gukuja:
                  _loc4_=this.mimacegus+this.animateDx_*param3/1000;
                  _loc5_=this.zogawuzo+this.animateDy_*param3/1000;
                  break;
            }
            this.face_.savoc.length=0;
            this.face_.savoc.push(0+_loc4_,0+_loc5_,0,1+_loc4_,0+_loc5_,0,1+_loc4_,1+_loc5_,0,0+_loc4_,1+_loc5_,0);
            this.face_.syb(this.face_.savoc);
         }
         return this.face_.draw(param1,param2);
      }
   }

}