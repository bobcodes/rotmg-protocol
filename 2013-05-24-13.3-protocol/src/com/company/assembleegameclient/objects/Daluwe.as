package com.company.assembleegameclient.objects
{
   import flash.geom.ColorTransform;
   import flash.display.BitmapData;


   public class Daluwe extends Object
   {
      public function Daluwe(param1:int, param2:uint, param3:Number, param4:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.startTime_=param1;
         this.color_=param2;
         this.suzohyqa=param3*1000;
         this.vepo=param4;
         this.sawepoli=param2>>16&255;
         this.lopyp=param2>>8&255;
         this.fopijabad=param2&255;
         return;
      }

      public var startTime_:int;

      public var color_:uint;

      public var suzohyqa:int;

      public var vepo:int;

      public var hoqy:ColorTransform;

      public var sawepoli:int;

      public var lopyp:int;

      public var fopijabad:int;

      public function apply(param1:BitmapData, param2:int) : BitmapData {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:int = (param2-this.startTime_)%this.suzohyqa;
         var _loc4_:Number = Math.sin(_loc3_/this.suzohyqa*Math.PI);
         var _loc5_:Number = _loc4_*0.5;
         var _loc6_:ColorTransform = new ColorTransform(1-_loc5_,1-_loc5_,1-_loc5_,1,_loc5_*this.sawepoli,_loc5_*this.lopyp,_loc5_*this.fopijabad,0);
         var _loc7_:* = param1.clone();
         _loc7_.colorTransform(_loc7_.rect,_loc6_);
         return _loc7_;
      }

      public function zudeqev(param1:int) : Boolean {
         return param1>this.startTime_+this.suzohyqa*this.vepo;
      }
   }

}