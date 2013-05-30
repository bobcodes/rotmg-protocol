package pyw
{
   import qov.Kalefu;
   import zelinoryv.Vib;
   import hotewa.Baqifa;
   import zubamyki.Qaf;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import flash.display.Sprite;
   import cuwyg.Tibeto;


   public class Ginidomu extends Kalefu
   {
      public function Ginidomu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var death:Vib;

      public var view:ResurrectionView;

      public var muwi:Baqifa;

      public var luribodi:Qaf;

      public var naval:Hez;

      public var closeDialogs:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.add(this.pomuwok);
         this.view.lejisyb.add(this.mizen);
         this.view.init(this.death.qajyzyn().background);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.lejisyb.remove(this.mizen);
         this.view.closed.remove(this.pomuwok);
         return;
      }

      private function mizen(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.naval.dispatch(param1);
         return;
      }

      private function pomuwok() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.closeDialogs.dispatch();
         var _loc1_:Tibeto = new Tibeto();
         _loc1_.susuka=false;
         _loc1_.charId=this.muwi.charId;
         _loc1_.myto=true;
         this.luribodi.dispatch(_loc1_);
         return;
      }
   }

}