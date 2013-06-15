package com.company.util
{
   import flash.display.GraphicsEndFill;
   import __AS3__.vec.Vector;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.geom.Matrix;
   import flash.display.GraphicsPathCommand;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.display.GraphicsSolidFill;


   public class Dyrejocu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Dyrejocu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const END_FILL:GraphicsEndFill = new GraphicsEndFill();

      public static const capuz:Vector.<int> = new Vector.<int>(4);

      public static const kuje:GraphicsStroke = new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,new GraphicsSolidFill(16711680));

      public static const jydebugu:GraphicsStroke = new GraphicsStroke();

      public static function gorudy(param1:GraphicsPath) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.commands.length=0;
         param1.data.length=0;
         return;
      }

      public static function zohuqule(param1:int, param2:int, param3:int, param4:int) : GraphicsPath {
         new Vector.<Number>(8)[0]=param1;
         new Vector.<Number>(8)[1]=param2;
         new Vector.<Number>(8)[2]=param1+param3;
         new Vector.<Number>(8)[3]=param2;
         new Vector.<Number>(8)[4]=param1+param3;
         new Vector.<Number>(8)[5]=param2+param4;
         new Vector.<Number>(8)[6]=param1;
         new Vector.<Number>(8)[7]=param2+param4;
         return new GraphicsPath(capuz,new Vector.<Number>(8));
      }

      public static function ryb(param1:Number, param2:Number, param3:Number=0.0, param4:Number=0.0, param5:Number=0.0) : Matrix {
         var _loc6_:Matrix = new Matrix();
         _loc6_.createGradientBox(param1,param2,param3,param4,param5);
         return _loc6_;
      }

      public static function drawRect(param1:int, param2:int, param3:int, param4:int, param5:GraphicsPath) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         param5.moveTo(param1,param2);
         param5.lineTo(param1+param3,param2);
         param5.lineTo(param1+param3,param2+param4);
         param5.lineTo(param1,param2+param4);
         return;
      }

      private static const fugebahaz:Number = 2*Math.PI;

      public static function drawCircle(param1:Number, param2:Number, param3:Number, param4:GraphicsPath, param5:int=8) : void {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc6_:Number = 1+1/param5*1.75;
         param4.moveTo(param1+param3,param2);
         var _loc7_:* = 1;
         while(_loc7_<=param5)
         {
            _loc8_=fugebahaz*_loc7_/param5;
            _loc9_=fugebahaz*(_loc7_-0.5)/param5;
            _loc10_=param1+param3*Math.cos(_loc8_);
            _loc11_=param2+param3*Math.sin(_loc8_);
            _loc12_=param1+param3*_loc6_*Math.cos(_loc9_);
            _loc13_=param2+param3*_loc6_*Math.sin(_loc9_);
            param4.curveTo(_loc12_,_loc13_,_loc10_,_loc11_);
            _loc7_++;
         }
         return;
      }

      public static const jybep:Array = [true,true,true,true];

      public static function moluv(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Array, param7:GraphicsPath) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         if(param6[0]!=0)
         {
            param7.moveTo(param1,param2+param5);
            param7.lineTo(param1+param5,param2);
         }
         else
         {
            param7.moveTo(param1,param2);
         }
         if(param6[1]!=0)
         {
            param7.lineTo(param1+param3-param5,param2);
            param7.lineTo(param1+param3,param2+param5);
         }
         else
         {
            param7.lineTo(param1+param3,param2);
         }
         if(param6[2]!=0)
         {
            param7.lineTo(param1+param3,param2+param4-param5);
            param7.lineTo(param1+param3-param5,param2+param4);
         }
         else
         {
            param7.lineTo(param1+param3,param2+param4);
         }
         if(param6[3]!=0)
         {
            param7.lineTo(param1+param5,param2+param4);
            param7.lineTo(param1,param2+param4-param5);
         }
         else
         {
            param7.lineTo(param1,param2+param4);
         }
         if(param6[0]!=0)
         {
            param7.lineTo(param1,param2+param5);
         }
         else
         {
            param7.lineTo(param1,param2);
         }
         return;
      }

      public static function suhuwon(param1:Number, param2:Number, param3:Number, param4:GraphicsPath) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         param4.moveTo(param1,param2-param3);
         param4.lineTo(param1+param3,param2);
         param4.lineTo(param1,param2+param3);
         param4.lineTo(param1-param3,param2);
         return;
      }
   }

}