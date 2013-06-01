package fyvanod
{
[CLASS974]   import flash.display.Sprite;
   import flash.display.Bitmap;
   import jat.CaretakerQueryDialog;
   import flash.display.BitmapData;


   public class Duvoridy extends Sprite
   {
      public function Duvoridy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const bosebeli:Dade = this.vorum();

      private const gyriwype:Citufe = this.laze();

      private const icon:Bitmap = this.bojad();

      private function vorum() : Dade {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dade = null;
         _loc1_=new Dade(CaretakerQueryDialog.hufefaven);
         _loc1_.x=60;
         addChild(_loc1_);
         return _loc1_;
      }

      private function laze() : Citufe {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Citufe = null;
         _loc1_=new Citufe();
         _loc1_.y=60;
         return _loc1_;
      }

      private function bojad() : Bitmap {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = null;
         _loc1_=new Bitmap(this.jupaminu());
         _loc1_.x=-16;
         _loc1_.y=-32;
         addChild(_loc1_);
         return _loc1_;
      }

      private function jupaminu() : BitmapData {
         return new BitmapData(42,42,true,4.27825536E9);
      }

      public function siqucofuh(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gyriwype.rike(param1);
         removeChild(this.bosebeli);
         addChild(this.gyriwype);
         return;
      }

      public function lydip() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeChild(this.gyriwype);
         addChild(this.bosebeli);
         return;
      }

      public function ferevu(param1:BitmapData) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.icon.bitmapData=param1;
         return;
      }
   }
[/CLASS]
}