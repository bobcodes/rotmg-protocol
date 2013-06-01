package coh
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import fidymu.CaretakerQueryDialog;
   import flash.display.BitmapData;


   public class Civ extends Sprite
   {
      public function Civ() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const zosoqesib:Legapen = this.majefyk();

      private const gyki:Fofipur = this.cosofab();

      private const icon:Bitmap = this.waforubot();

      private function majefyk() : Legapen {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Legapen = null;
         _loc1_=new Legapen(CaretakerQueryDialog.vola);
         _loc1_.x=60;
         addChild(_loc1_);
         return _loc1_;
      }

      private function cosofab() : Fofipur {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Fofipur = null;
         _loc1_=new Fofipur();
         _loc1_.y=60;
         return _loc1_;
      }

      private function waforubot() : Bitmap {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bitmap = null;
         _loc1_=new Bitmap(this.jofope());
         _loc1_.x=-16;
         _loc1_.y=-32;
         addChild(_loc1_);
         return _loc1_;
      }

      private function jofope() : BitmapData {
         return new BitmapData(42,42,true,4.27825536E9);
      }

      public function kybol(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gyki.sonydiw(param1);
         removeChild(this.zosoqesib);
         addChild(this.gyki);
         return;
      }

      public function syjydyz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeChild(this.gyki);
         addChild(this.zosoqesib);
         return;
      }

      public function cemis(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.icon.bitmapData=param1;
         return;
      }
   }

}