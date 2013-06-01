package com.company.assembleegameclient.ui
{
[CLASS932]   import flash.display.Shape;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.display.GraphicsPathWinding;


   public class Detys extends Shape
   {
      public function Detys(param1:int, param2:uint) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qiq=new GraphicsSolidFill(16777215,1);
         this.jeb=new GraphicsPath(new Vector.<int>(),new Vector.<Number>(),GraphicsPathWinding.NON_ZERO);
         new Vector.<IGraphicsData>(3)[0]=this.qiq;
         new Vector.<IGraphicsData>(3)[1]=this.jeb;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         super();
         this.romy(param1,param2);
         return;
      }

      private var qiq:GraphicsSolidFill;

      private var jeb:GraphicsPath;

      private const donitem:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      public function romy(param1:int, param2:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         graphics.clear();
         this.qiq.color=param2;
         Nosupygu.jyrodepu(this.jeb);
         Nosupygu.gon(0,0,4,this.jeb);
         Nosupygu.gon(param1,0,4,this.jeb);
         Nosupygu.drawRect(0,-1,param1,2,this.jeb);
         graphics.drawGraphicsData(this.donitem);
         return;
      }
   }
[/CLASS]
}