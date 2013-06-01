package com.company.assembleegameclient.objects
{
[CLASS1407]   import flash.geom.ColorTransform;
   import flash.display.BitmapData;


   public class Qegaqon extends Object
   {
      public function Qegaqon(param1:int, param2:uint, param3:Number, param4:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.startTime_=param1;
         this.color_=param2;
         this.sutuluri=param3*1000;
         this.kakezado=param4;
         this.zinuve=param2>>16&255;
         this.betavaw=param2>>8&255;
         this.vudomazi=param2&255;
         return;
      }

      public var startTime_:int;

      public var color_:uint;

      public var sutuluri:int;

      public var kakezado:int;

      public var his:ColorTransform;

      public var zinuve:int;

      public var betavaw:int;

      public var vudomazi:int;

      public function apply(param1:BitmapData, param2:int) : BitmapData {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:int = (param2-this.startTime_)%this.sutuluri;
         var _loc4_:Number = Math.sin(_loc3_/this.sutuluri*Math.PI);
         var _loc5_:Number = _loc4_*0.5;
         var _loc6_:ColorTransform = new ColorTransform(1-_loc5_,1-_loc5_,1-_loc5_,1,_loc5_*this.zinuve,_loc5_*this.betavaw,_loc5_*this.vudomazi,0);
         var _loc7_:* = param1.clone();
         _loc7_.colorTransform(_loc7_.rect,_loc6_);
         return _loc7_;
      }

      public function fidapi(param1:int) : Boolean {
         return param1>this.startTime_+this.sutuluri*this.kakezado;
      }
   }
[/CLASS]
}