package com.company.assembleegameclient.map
{
[CLASS1659]   import com.company.assembleegameclient.engine3d.Face3D;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.BitmapData;


   public class Bujubakuh extends Object
   {
      public function Bujubakuh(param1:BitmapData, param2:Vector.<Number>, param3:Number, param4:Number, param5:int, param6:Number, param7:Number) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         super();
         this.face_=new Face3D(param1,param2,Square.gehocezaf.concat());
         this.levedofon=param3;
         this.wona=param4;
         if(!(this.levedofon==0)||!(this.wona==0))
         {
            this.face_.megew.length=0;
            this.face_.megew.push(0+this.levedofon,0+this.wona,0,1+this.levedofon,0+this.wona,0,1+this.levedofon,1+this.wona,0,0+this.levedofon,1+this.wona,0);
            this.face_.mit(this.face_.megew);
            this.face_.bitmapFill_.repeat=true;
         }
         this.animate_=param5;
         if(this.animate_!=Redoroqo.saluf)
         {
            this.face_.bitmapFill_.repeat=true;
         }
         this.animateDx_=param6;
         this.animateDy_=param7;
         return;
      }

      public var animate_:int;

      public var face_:Face3D;

      public var levedofon:Number = 0;

      public var wona:Number = 0;

      public var animateDx_:Number = 0;

      public var animateDy_:Number = 0;

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.face_.dispose();
         this.face_=null;
         return;
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.animate_!=Redoroqo.saluf)
         {
            _loc4_=0;
            _loc5_=0;
            switch(this.animate_)
            {
               case Redoroqo.wazozu:
                  _loc4_=this.levedofon+Math.sin(this.animateDx_*param3/1000);
                  _loc5_=this.wona+Math.sin(this.animateDy_*param3/1000);
                  break;
               case Redoroqo.mypap:
                  _loc4_=this.levedofon+this.animateDx_*param3/1000;
                  _loc5_=this.wona+this.animateDy_*param3/1000;
                  break;
            }
            this.face_.megew.length=0;
            this.face_.megew.push(0+_loc4_,0+_loc5_,0,1+_loc4_,0+_loc5_,0,1+_loc4_,1+_loc5_,0,0+_loc4_,1+_loc5_,0);
            this.face_.mit(this.face_.megew);
         }
         return this.face_.draw(param1,param2);
      }
   }
[/CLASS]
}