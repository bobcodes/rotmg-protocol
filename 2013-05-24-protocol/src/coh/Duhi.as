package coh
{
   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import flash.geom.ColorTransform;
   import flash.display.GraphicsPathWinding;


   public class Duhi extends Sprite
   {
      public function Duhi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qosedav=new GraphicsSolidFill(16777215,1);
         this.nufygipyv=new GraphicsPath(new Vector.<int>(),new Vector.<Number>(),GraphicsPathWinding.NON_ZERO);
         new Vector.<IGraphicsData>(3)[0]=this.qosedav;
         new Vector.<IGraphicsData>(3)[1]=this.nufygipyv;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         super();
         this.setColor(6710886);
         return;
      }

      private var qosedav:GraphicsSolidFill;

      private var nufygipyv:GraphicsPath;

      private const zipazymuw:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      public function setColor(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         graphics.clear();
         Tizulo.vomynaqu(this.nufygipyv);
         this.qosedav.color=param1;
         this.merutybyn();
         Tizulo.drawRect(26,11.5,24,19,this.nufygipyv);
         graphics.drawGraphicsData(this.zipazymuw);
         return;
      }

      public function kyfefak(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = transform.colorTransform;
         _loc2_.color=param1?16777103:5526612;
         transform.colorTransform=_loc2_;
         return;
      }

      private function merutybyn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nufygipyv.moveTo(0,20);
         this.nufygipyv.lineTo(26,0);
         this.nufygipyv.lineTo(26,40);
         this.nufygipyv.lineTo(0,20);
         graphics.drawGraphicsData(this.zipazymuw);
         return;
      }
   }

}