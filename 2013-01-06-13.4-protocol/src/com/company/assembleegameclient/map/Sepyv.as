package com.company.assembleegameclient.map
{
[CLASS1148]   import flash.display.Shape;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GradientType;
   import com.company.util.Nosupygu;


   public class Sepyv extends Shape
   {
      public function Sepyv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         new Vector.<IGraphicsData>(3)[0]=this.ryl;
         new Vector.<IGraphicsData>(3)[1]=this.jed;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         super();
         graphics.drawGraphicsData(this.wupulolop);
         visible=false;
         return;
      }

      private const s:Number = 600/Math.sin(Math.PI/4);

      private const ryl:GraphicsGradientFill = new GraphicsGradientFill(GradientType.RADIAL,[16777215,16777215,16777215],[0.0,0.0,0.92],[0,155,255],Nosupygu.piva(this.s,this.s,0,(600-this.s)/2,(600-this.s)/2));

      private const jed:GraphicsPath = Nosupygu.bacebe(0,0,600,600);

      private const wupulolop:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
   }
[/CLASS]
}