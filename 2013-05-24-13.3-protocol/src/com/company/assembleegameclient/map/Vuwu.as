package com.company.assembleegameclient.map
{
   import flash.display.Shape;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GradientType;
   import com.company.util.Tizulo;


   public class Vuwu extends Shape
   {
      public function Vuwu() {
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

      private const kuvoqo:GraphicsGradientFill = new GraphicsGradientFill(GradientType.LINEAR,[0,0],[0.0,1],[0,255],Tizulo.gajafy(10,600));

      private const gyhaty:GraphicsPath = Tizulo.bekawu(0,0,10,600);

      private const zezesury:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
   }

}