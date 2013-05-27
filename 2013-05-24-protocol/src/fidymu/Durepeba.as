package fidymu
{
   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;


   public class Durepeba extends Sprite
   {
      public function Durepeba(param1:int, param2:Array) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.bolu=new GraphicsSolidFill(5526612);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         super();
         new Vector.<IGraphicsData>(3)[0]=this.bolu;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Tizulo.woforyzib(0,0,param1,param1,param1/12,param2,this.path_);
         graphics.drawGraphicsData(_loc3_);
         return;
      }

      private var bolu:GraphicsSolidFill;

      private var path_:GraphicsPath;
   }

}