package jat
{
[CLASS1549]   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;


   public class Kohututo extends Sprite
   {
      public function Kohututo(param1:int, param2:Array) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mowejyman=new GraphicsSolidFill(5526612);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         super();
         new Vector.<IGraphicsData>(3)[0]=this.mowejyman;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Nosupygu.secebeq(0,0,param1,param1,param1/12,param2,this.path_);
         graphics.drawGraphicsData(_loc3_);
         return;
      }

      private var mowejyman:GraphicsSolidFill;

      private var path_:GraphicsPath;
   }
[/CLASS]
}