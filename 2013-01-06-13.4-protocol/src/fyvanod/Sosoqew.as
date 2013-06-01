package fyvanod
{
[CLASS936]   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.geom.ColorTransform;
   import flash.display.GraphicsPathWinding;


   public class Sosoqew extends Sprite
   {
      public function Sosoqew() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiq=new GraphicsSolidFill(16777215,1);
         this.jeb=new GraphicsPath(new Vector.<int>(),new Vector.<Number>(),GraphicsPathWinding.NON_ZERO);
         new Vector.<IGraphicsData>(3)[0]=this.qiq;
         new Vector.<IGraphicsData>(3)[1]=this.jeb;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         super();
         this.setColor(6710886);
         return;
      }

      private var qiq:GraphicsSolidFill;

      private var jeb:GraphicsPath;

      private const donitem:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      public function setColor(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.clear();
         Nosupygu.jyrodepu(this.jeb);
         this.qiq.color=param1;
         this.cuwutez();
         Nosupygu.drawRect(26,11.5,24,19,this.jeb);
         graphics.drawGraphicsData(this.donitem);
         return;
      }

      public function qidyjuso(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = transform.colorTransform;
         _loc2_.color=param1?16777103:5526612;
         transform.colorTransform=_loc2_;
         return;
      }

      private function cuwutez() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jeb.moveTo(0,20);
         this.jeb.lineTo(26,0);
         this.jeb.lineTo(26,40);
         this.jeb.lineTo(0,20);
         graphics.drawGraphicsData(this.donitem);
         return;
      }
   }
[/CLASS]
}