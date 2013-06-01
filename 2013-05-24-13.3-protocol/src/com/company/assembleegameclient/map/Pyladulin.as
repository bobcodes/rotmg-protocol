package com.company.assembleegameclient.map
{
   import flash.display.Shape;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GradientType;
   import com.company.util.Tizulo;


   public class Pyladulin extends Shape
   {
      public function Pyladulin() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         new Vector.<IGraphicsData>(3)[0]=this.kuvoqo;
         new Vector.<IGraphicsData>(3)[1]=this.gyhaty;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         super();
         graphics.drawGraphicsData(this.zezesury);
         visible=false;
         return;
      }

      private const s:Number = 600/Math.sin(Math.PI/4);

      private const kuvoqo:GraphicsGradientFill = new GraphicsGradientFill(GradientType.RADIAL,[16777215,16777215,16777215],[0.0,0.0,0.92],[0,155,255],Tizulo.gajafy(this.s,this.s,0,(600-this.s)/2,(600-this.s)/2));

      private const gyhaty:GraphicsPath = Tizulo.bekawu(0,0,600,600);

      private const zezesury:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
   }

}