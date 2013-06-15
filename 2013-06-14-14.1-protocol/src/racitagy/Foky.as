package racitagy
{
   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;


   public class Foky extends Sprite
   {
      public function Foky(param1:int, param2:Array) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.dudoja=new GraphicsSolidFill(5526612);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         super();
         new Vector.<IGraphicsData>(3)[0]=this.dudoja;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Dyrejocu.moluv(0,0,param1,param1,param1/12,param2,this.path_);
         graphics.drawGraphicsData(_loc3_);
         return;
      }

      private var dudoja:GraphicsSolidFill;

      private var path_:GraphicsPath;
   }

}