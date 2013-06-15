package haj
{
   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.geom.ColorTransform;
   import flash.display.GraphicsPathWinding;


   public class Guqy extends Sprite
   {
      public function Guqy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hogyruq=new GraphicsSolidFill(16777215,1);
         this.beji=new GraphicsPath(new Vector.<int>(),new Vector.<Number>(),GraphicsPathWinding.NON_ZERO);
         new Vector.<IGraphicsData>(3)[0]=this.hogyruq;
         new Vector.<IGraphicsData>(3)[1]=this.beji;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         super();
         this.setColor(6710886);
         return;
      }

      private var hogyruq:GraphicsSolidFill;

      private var beji:GraphicsPath;

      private const nasopalov:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      public function setColor(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.clear();
         Dyrejocu.gorudy(this.beji);
         this.hogyruq.color=param1;
         this.riqela();
         Dyrejocu.drawRect(26,11.5,24,19,this.beji);
         graphics.drawGraphicsData(this.nasopalov);
         return;
      }

      public function vicy(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = transform.colorTransform;
         _loc2_.color=param1?16777103:5526612;
         transform.colorTransform=_loc2_;
         return;
      }

      private function riqela() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.beji.moveTo(0,20);
         this.beji.lineTo(26,0);
         this.beji.lineTo(26,40);
         this.beji.lineTo(0,20);
         graphics.drawGraphicsData(this.nasopalov);
         return;
      }
   }

}