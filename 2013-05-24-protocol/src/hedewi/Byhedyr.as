package hedewi
{
   import flash.geom.Matrix;
   import flash.display.Bitmap;
   import jag.Giq;
   import movimet.Jetadopuc;
   import nec.Nara;
   import flash.display.BitmapData;
   import suko.Rerapipy;


   public class Byhedyr extends Moho
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Byhedyr(param1:int, param2:Rerapipy, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,param2,param3);
         return;
      }

      private static const qafywo:Matrix = new Matrix();

      public var hotKey:int;

      private var rygisu:Bitmap;

      public function nebidy(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hotKey=param1;
         this.dypyze();
         return;
      }

      public function dypyze() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Jetadopuc = Giq.kid().getInstance(Jetadopuc);
         var _loc2_:BitmapData = _loc1_.make(new Nara(String(this.hotKey)),26,3552822,true,qafywo,false);
         this.rygisu=new Bitmap(_loc2_);
         this.rygisu.x=WIDTH/2-this.rygisu.width/2;
         this.rygisu.y=HEIGHT/2-14;
         addChildAt(this.rygisu,0);
         return;
      }

      override public function setItemSprite(param1:Madi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.setItemSprite(param1);
         param1.setDim(false);
         return;
      }

      override public function setItem(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Boolean = super.setItem(param1);
         if(_loc2_)
         {
            this.rygisu.visible=cyjop.itemId<=0;
         }
         return _loc2_;
      }

      override protected function beginDragCallback() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rygisu.visible=true;
         return;
      }

      override protected function endDragCallback() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rygisu.visible=cyjop.itemId<=0;
         return;
      }
   }

}