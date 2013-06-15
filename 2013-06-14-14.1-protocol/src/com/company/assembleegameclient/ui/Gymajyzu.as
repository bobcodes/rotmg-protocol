package com.company.assembleegameclient.ui
{
   import flash.display.Shape;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.display.GraphicsPathWinding;


   public class Gymajyzu extends Shape
   {
      public function Gymajyzu(param1:int, param2:uint) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.hogyruq=new GraphicsSolidFill(16777215,1);
         this.beji=new GraphicsPath(new Vector.<int>(),new Vector.<Number>(),GraphicsPathWinding.NON_ZERO);
         new Vector.<IGraphicsData>(3)[0]=this.hogyruq;
         new Vector.<IGraphicsData>(3)[1]=this.beji;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         super();
         this.hecymov(param1,param2);
         return;
      }

      private var hogyruq:GraphicsSolidFill;

      private var beji:GraphicsPath;

      private const nasopalov:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      public function hecymov(param1:int, param2:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         graphics.clear();
         this.hogyruq.color=param2;
         Dyrejocu.gorudy(this.beji);
         Dyrejocu.suhuwon(0,0,4,this.beji);
         Dyrejocu.suhuwon(param1,0,4,this.beji);
         Dyrejocu.drawRect(0,-1,param1,2,this.beji);
         graphics.drawGraphicsData(this.nasopalov);
         return;
      }
   }

}