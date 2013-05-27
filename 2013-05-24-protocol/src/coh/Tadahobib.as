package coh
{
   import qov.Kalefu;
   import wegyluke.Nifu;
   import wegyluke.Hez;
   import flash.events.MouseEvent;
   import gepa.Mabo;
   import gepa.Fedif;


   public class Tadahobib extends Kalefu
   {
      public function Tadahobib() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Lid;

      public var zohi:Nifu;

      public var naval:Hez;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.init();
         this.view.weryn.addEventListener(MouseEvent.CLICK,this.zatyfam);
         this.view.recut.addEventListener(MouseEvent.CLICK,this.dodukyz);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.destroy();
         return;
      }

      protected function dodukyz(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.naval.dispatch(new Mabo());
         return;
      }

      protected function zatyfam(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zohi.dispatch(new Fedif());
         return;
      }
   }

}