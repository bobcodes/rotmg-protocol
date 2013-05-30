package nico
{
   import qov.Kalefu;
   import hotewa.Baqifa;
   import raqu.Calogu;
   import zubamyki.Qaf;
   import sakugyt.Cekocozah;
   import cuwyg.Tibeto;


   public class Kyjyso extends Kalefu
   {
      public function Kyjyso() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Mivivibif;

      public var model:Baqifa;

      public var zogytuso:Calogu;

      public var play:Qaf;

      override public function initialize() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.model.hasAvailableCharSlot();
         this.view.wynetuda(_loc1_);
         if(_loc1_)
         {
            this.view.play.addOnce(this.sari);
         }
         this.view.back.addOnce(this.cysaq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.back.remove(this.cysaq);
         this.view.play.remove(this.sari);
         return;
      }

      private function cysaq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zogytuso.dispatch(new Cekocozah());
         return;
      }

      private function sari() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tibeto = new Tibeto();
         _loc1_.susuka=true;
         _loc1_.charId=this.model.ruzimusys();
         _loc1_.keyTime=-1;
         _loc1_.myto=true;
         this.play.dispatch(_loc1_);
         return;
      }
   }

}