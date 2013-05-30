package ruwysepyd
{
   import qov.Kalefu;
   import sakugyt.Cekocozah;
   import hotewa.Baqifa;
   import raqu.Calogu;
   import zubamyki.Qaf;
   import raqu.Hujuhy;
   import raqu.Goq;
   import raqu.Doqavi;
   import raqu.Jewyd;
   import raqu.Vanubacam;
   import fulaw.Vihekivuc;
   import sakugyt.CharacterSelectionAndNewsScreen;
   import nico.Mivivibif;
   import flash.display.Sprite;


   public class Tubete extends Kalefu
   {
      public function Tubete() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Cekocozah;

      public var muwi:Baqifa;

      public var zogytuso:Calogu;

      public var luribodi:Qaf;

      public var kyzytanuh:Hujuhy;

      public var tihe:Goq;

      public var kab:Doqavi;

      public var qalagiv:Jewyd;

      public var pen:Vanubacam;

      public var sydo:Vihekivuc;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.selected.add(this.pamucelo);
         this.view.close.add(this.onClose);
         this.view.tooltip.add(this.dykoto);
         this.view.buy.add(this.hosaj);
         this.kab.add(this.zogow);
         this.qalagiv.add(this.kysimew);
         this.view.initialize(this.muwi);
         return;
      }

      private function kysimew(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.ciri(this.muwi.getCredits(),this.muwi.cof());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.selected.remove(this.pamucelo);
         this.view.close.remove(this.onClose);
         this.view.tooltip.remove(this.dykoto);
         this.view.buy.remove(this.hosaj);
         this.qalagiv.remove(this.kysimew);
         this.kab.remove(this.zogow);
         return;
      }

      private function onClose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zogytuso.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function pamucelo(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sydo.lyt(param1).piloni(true);
         this.zogytuso.dispatch(new Mivivibif());
         return;
      }

      private function dykoto(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.kyzytanuh.dispatch(param1);
         }
         else
         {
            this.tihe.dispatch();
         }
         return;
      }

      private function zogow() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.update(this.muwi);
         return;
      }

      private function hosaj(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pen.dispatch(param1);
         return;
      }
   }

}