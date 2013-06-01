package com.company.assembleegameclient.ui
{
   import flash.display.Shape;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import flash.display.GraphicsPathWinding;


   public class Luvu extends Shape
   {
      public function Luvu(param1:int, param2:uint) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qosedav=new GraphicsSolidFill(16777215,1);
         this.nufygipyv=new GraphicsPath(new Vector.<int>(),new Vector.<Number>(),GraphicsPathWinding.NON_ZERO);
         new Vector.<IGraphicsData>(3)[0]=this.qosedav;
         new Vector.<IGraphicsData>(3)[1]=this.nufygipyv;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         super();
         this.jum(param1,param2);
         return;
      }

      private var qosedav:GraphicsSolidFill;

      private var nufygipyv:GraphicsPath;

      private const zipazymuw:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      public function jum(param1:int, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         graphics.clear();
         this.qosedav.color=param2;
         Tizulo.vomynaqu(this.nufygipyv);
         Tizulo.wovisuquk(0,0,4,this.nufygipyv);
         Tizulo.wovisuquk(param1,0,4,this.nufygipyv);
         Tizulo.drawRect(0,-1,param1,2,this.nufygipyv);
         graphics.drawGraphicsData(this.zipazymuw);
         return;
      }
   }

}