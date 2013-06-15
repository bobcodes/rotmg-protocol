package com.company.assembleegameclient.map
{
   import flash.display.Shape;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GradientType;
   import com.company.util.Dyrejocu;


   public class Kovo extends Shape
   {
      public function Kovo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         new Vector.<IGraphicsData>(3)[0]=this.macomybaz;
         new Vector.<IGraphicsData>(3)[1]=this.git;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         super();
         graphics.drawGraphicsData(this.lunup);
         visible=false;
         return;
      }

      private const macomybaz:GraphicsGradientFill = new GraphicsGradientFill(GradientType.LINEAR,[0,0],[0.0,1],[0,255],Dyrejocu.ryb(10,600));

      private const git:GraphicsPath = Dyrejocu.zohuqule(0,0,10,600);

      private const lunup:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
   }

}