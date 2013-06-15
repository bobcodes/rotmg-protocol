package bivecenym
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import pejycaj.Mudosorug;
   import flash.display.BitmapData;


   public class Dyqed extends Sprite
   {
      public function Dyqed() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const lij:Ryrelorab = this.ketas();

      private const jivavom:Guhuj = this.labase();

      private const icon:Bitmap = this.hoqijy();

      private function ketas() : Ryrelorab {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Ryrelorab = null;
         _loc1_=new Ryrelorab(Mudosorug.wyfi);
         _loc1_.x=60;
         addChild(_loc1_);
         return _loc1_;
      }

      private function labase() : Guhuj {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guhuj = null;
         _loc1_=new Guhuj();
         _loc1_.y=60;
         return _loc1_;
      }

      private function hoqijy() : Bitmap {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = new Bitmap(this.ziwu());
         _loc1_.x=0;
         _loc1_.y=0;
         addChild(_loc1_);
         return _loc1_;
      }

      private function ziwu() : BitmapData {
         return new BitmapData(42,42,true,4.27825536E9);
      }

      public function wibulotavy(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jivavom.kenadyb(param1);
         removeChild(this.lij);
         addChild(this.jivavom);
         return;
      }

      public function dokowiwy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeChild(this.jivavom);
         addChild(this.lij);
         return;
      }

      public function cozym(param1:BitmapData) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.icon.bitmapData=param1;
         return;
      }
   }

}