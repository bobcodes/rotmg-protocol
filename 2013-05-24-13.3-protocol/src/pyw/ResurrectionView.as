package pyw
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import nas.Dialog;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.filters.ColorMatrixFilter;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;


   public class ResurrectionView extends Sprite
   {
      public function ResurrectionView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public const lejisyb:Hugyqufyq = new Hugyqufyq(Sprite);

      public const closed:Hugyqufyq = new Hugyqufyq();

      private const lyvu:Number = 0;

      private const bab:Number = 3881787;

      private const dofomuhyf:Number = 300;

      private const gejukuli:Number = 400;

      private var pohoqal:Dialog;

      public function init(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dolihaduj(param1);
         this.suzafe();
         return;
      }

      private function dolihaduj(param1:BitmapData) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Bitmap = null;
         var _loc2_:Array = [0.33,0.33,0.33,0.0,0.0,0.33,0.33,0.33,0.0,0.0,0.33,0.33,0.33,0.0,0.0,0.33,0.33,0.33,1,0.0];
         var _loc3_:ColorMatrixFilter = new ColorMatrixFilter(_loc2_);
         _loc4_=new Bitmap(param1);
         _loc4_.filters=[_loc3_];
         addChild(_loc4_);
         return;
      }

      public function suzafe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pohoqal=new Dialog(I18nKeys.ziryz,I18nKeys.noza,I18nKeys.mygypobuv,null,null);
         this.pohoqal.addEventListener(Dialog.LEFT_BUTTON,this.onButtonClick);
         this.lejisyb.dispatch(this.pohoqal);
         return;
      }

      private function onButtonClick(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.closed.dispatch();
         return;
      }
   }

}