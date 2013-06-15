package hupad
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import vysob.Dialog;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.filters.ColorMatrixFilter;
   import komi.Vibemod;
   import flash.events.Event;


   public class ResurrectionView extends Sprite
   {
      public function ResurrectionView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public const vihiwav:Qanyduk = new Qanyduk(Sprite);

      public const closed:Qanyduk = new Qanyduk();

      private const myroruh:Number = 0;

      private const zizyneda:Number = 3881787;

      private const gatoqa:Number = 300;

      private const nus:Number = 400;

      private var qohaw:Dialog;

      public function init(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vobocuwok(param1);
         this.mupoju();
         return;
      }

      private function vobocuwok(param1:BitmapData) : void {
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

      public function mupoju() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qohaw=new Dialog(Vibemod.bywur,Vibemod.mejohivu,Vibemod.ladehili,null,null);
         this.qohaw.addEventListener(Dialog.LEFT_BUTTON,this.onButtonClick);
         this.vihiwav.dispatch(this.qohaw);
         return;
      }

      private function onButtonClick(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.closed.dispatch();
         return;
      }
   }

}