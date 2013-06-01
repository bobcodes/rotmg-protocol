package daloraf
{
[CLASS1160]   import flash.geom.Matrix;
   import flash.display.Bitmap;
   import jutesesel.Qibigagal;
   import pudev.Sinobyf;
   import totuhare.Javo;
   import flash.display.BitmapData;
   import ferozosyf.Jogohyh;


   public class Cato extends Humy
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cato(param1:int, param2:Jogohyh, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,param2,param3);
         return;
      }

      private static const subaquzi:Matrix = new Matrix();

      public var hotKey:int;

      private var fok:Bitmap;

      public function ryluf(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hotKey=param1;
         this.sefyhoq();
         return;
      }

      public function sefyhoq() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Sinobyf = Qibigagal.husuha().getInstance(Sinobyf);
         var _loc2_:BitmapData = _loc1_.make(new Javo(String(this.hotKey)),26,3552822,true,subaquzi,false);
         this.fok=new Bitmap(_loc2_);
         this.fok.x=WIDTH/2-this.fok.width/2;
         this.fok.y=HEIGHT/2-14;
         addChildAt(this.fok,0);
         return;
      }

      override public function setItemSprite(param1:Guganyqug) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
            this.fok.visible=cawiluz.itemId<=0;
         }
         return _loc2_;
      }

      override protected function beginDragCallback() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fok.visible=true;
         return;
      }

      override protected function endDragCallback() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fok.visible=cawiluz.itemId<=0;
         return;
      }
   }
[/CLASS]
}