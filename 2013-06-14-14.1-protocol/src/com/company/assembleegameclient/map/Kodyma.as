package com.company.assembleegameclient.map
{
   import flash.display.Shape;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GradientType;
   import com.company.util.Dyrejocu;


   public class Kodyma extends Shape
   {
      public function Kodyma() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         new Vector.<IGraphicsData>(3)[0]=this.macomybaz;
         new Vector.<IGraphicsData>(3)[1]=this.git;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         super();
         graphics.drawGraphicsData(this.lunup);
         visible=false;
         return;
      }

      private const s:Number = 600/Math.sin(Math.PI/4);

      private const macomybaz:GraphicsGradientFill = new GraphicsGradientFill(GradientType.RADIAL,[16777215,16777215,16777215],[0.0,0.0,0.92],[0,155,255],Dyrejocu.ryb(this.s,this.s,0,(600-this.s)/2,(600-this.s)/2));

      private const git:GraphicsPath = Dyrejocu.zohuqule(0,0,600,600);

      private const lunup:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
   }

}