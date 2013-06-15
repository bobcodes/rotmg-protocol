package com.company.assembleegameclient.map
{
   import com.company.assembleegameclient.engine3d.Face3D;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.BitmapData;


   public class Bumuv extends Object
   {
      public function Bumuv(param1:BitmapData, param2:Vector.<Number>, param3:Number, param4:Number, param5:int, param6:Number, param7:Number) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         super();
         this.face_=new Face3D(param1,param2,Square.vucip.concat());
         this.dojynob=param3;
         this.niz=param4;
         if(!(this.dojynob==0)||!(this.niz==0))
         {
            this.face_.gocabe.length=0;
            this.face_.gocabe.push(0+this.dojynob,0+this.niz,0,1+this.dojynob,0+this.niz,0,1+this.dojynob,1+this.niz,0,0+this.dojynob,1+this.niz,0);
            this.face_.sizane(this.face_.gocabe);
            this.face_.bitmapFill_.repeat=true;
         }
         this.animate_=param5;
         if(this.animate_!=Ryfiseqe.bocijaha)
         {
            this.face_.bitmapFill_.repeat=true;
         }
         this.animateDx_=param6;
         this.animateDy_=param7;
         return;
      }

      public var animate_:int;

      public var face_:Face3D;

      public var dojynob:Number = 0;

      public var niz:Number = 0;

      public var animateDx_:Number = 0;

      public var animateDy_:Number = 0;

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.face_.dispose();
         this.face_=null;
         return;
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.animate_!=Ryfiseqe.bocijaha)
         {
            _loc4_=0;
            _loc5_=0;
            switch(this.animate_)
            {
               case Ryfiseqe.meke:
                  _loc4_=this.dojynob+Math.sin(this.animateDx_*param3/1000);
                  _loc5_=this.niz+Math.sin(this.animateDy_*param3/1000);
                  break;
               case Ryfiseqe.medyf:
                  _loc4_=this.dojynob+this.animateDx_*param3/1000;
                  _loc5_=this.niz+this.animateDy_*param3/1000;
                  break;
            }
            this.face_.gocabe.length=0;
            this.face_.gocabe.push(0+_loc4_,0+_loc5_,0,1+_loc4_,0+_loc5_,0,1+_loc4_,1+_loc5_,0,0+_loc4_,1+_loc5_,0);
            this.face_.sizane(this.face_.gocabe);
         }
         return this.face_.draw(param1,param2);
      }
   }

}