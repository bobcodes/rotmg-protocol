package com.company.assembleegameclient.map
{
[CLASS1144]   import flash.display.Shape;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GradientType;
   import com.company.util.Nosupygu;


   public class Hyvab extends Shape
   {
      public function Hyvab() {
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

      private const ryl:GraphicsGradientFill = new GraphicsGradientFill(GradientType.LINEAR,[0,0],[0.0,1],[0,255],Nosupygu.piva(10,600));

      private const jed:GraphicsPath = Nosupygu.bacebe(0,0,10,600);

      private const wupulolop:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
   }
[/CLASS]
}