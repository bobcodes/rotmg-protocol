package timorypi
{
[CLASS401]   import flash.display.Sprite;
   import tinava.Dab;
   import cejyva.Dialog;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.filters.ColorMatrixFilter;
   import haqakel.Kefyfa;
   import flash.events.Event;


   public class ResurrectionView extends Sprite
   {
      public function ResurrectionView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public const vuna:Dab = new Dab(Sprite);

      public const closed:Dab = new Dab();

      private const rapuvum:Number = 0;

      private const sas:Number = 3881787;

      private const rusegamo:Number = 300;

      private const wafamobe:Number = 400;

      private var wuratywet:Dialog;

      public function init(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nybedo(param1);
         this.gotol();
         return;
      }

      private function nybedo(param1:BitmapData) : void {
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

      public function gotol() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wuratywet=new Dialog(Kefyfa.neg,Kefyfa.jileh,Kefyfa.kej,null,null);
         this.wuratywet.addEventListener(Dialog.LEFT_BUTTON,this.onButtonClick);
         this.vuna.dispatch(this.wuratywet);
         return;
      }

      private function onButtonClick(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.closed.dispatch();
         return;
      }
   }
[/CLASS]
}