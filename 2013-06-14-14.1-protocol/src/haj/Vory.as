package haj
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import racitagy.CaretakerQueryDialog;
   import flash.display.BitmapData;


   public class Vory extends Sprite
   {
      public function Vory() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const lij:Wesu = this.ketas();

      private const jivavom:Lycy = this.labase();

      private const icon:Bitmap = this.lavamyny();

      private function ketas() : Wesu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Wesu = null;
         _loc1_=new Wesu(CaretakerQueryDialog.wyfi);
         _loc1_.x=60;
         addChild(_loc1_);
         return _loc1_;
      }

      private function labase() : Lycy {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lycy = null;
         _loc1_=new Lycy();
         _loc1_.y=60;
         return _loc1_;
      }

      private function lavamyny() : Bitmap {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = new Bitmap(this.ziwu());
         _loc1_.x=-16;
         _loc1_.y=-32;
         addChild(_loc1_);
         return _loc1_;
      }

      private function ziwu() : BitmapData {
         return new BitmapData(42,42,true,4.27825536E9);
      }

      public function wibulotavy(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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

      public function fapysiqo(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.icon.bitmapData=param1;
         return;
      }
   }

}