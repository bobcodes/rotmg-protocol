package com.company.assembleegameclient.objects
{
   import flash.geom.ColorTransform;
   import flash.display.BitmapData;


   public class Hydihu extends Object
   {
      public function Hydihu(param1:int, param2:uint, param3:Number, param4:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.startTime_=param1;
         this.color_=param2;
         this.qifymizuh=param3*1000;
         this.fimiva=param4;
         this.fazoz=param2>>16&255;
         this.pyzybybes=param2>>8&255;
         this.damybamew=param2&255;
         return;
      }

      public var startTime_:int;

      public var color_:uint;

      public var qifymizuh:int;

      public var fimiva:int;

      public var moq:ColorTransform;

      public var fazoz:int;

      public var pyzybybes:int;

      public var damybamew:int;

      public function apply(param1:BitmapData, param2:int) : BitmapData {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:int = (param2-this.startTime_)%this.qifymizuh;
         var _loc4_:Number = Math.sin(_loc3_/this.qifymizuh*Math.PI);
         var _loc5_:Number = _loc4_*0.5;
         var _loc6_:ColorTransform = new ColorTransform(1-_loc5_,1-_loc5_,1-_loc5_,1,_loc5_*this.fazoz,_loc5_*this.pyzybybes,_loc5_*this.damybamew,0);
         var _loc7_:* = param1.clone();
         _loc7_.colorTransform(_loc7_.rect,_loc6_);
         return _loc7_;
      }

      public function zezip(param1:int) : Boolean {
         return param1>this.startTime_+this.qifymizuh*this.fimiva;
      }
   }

}