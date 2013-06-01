package sylusowuf
{
   import qov.Kalefu;
   import nago.Bela;
   import nago.Vysorado;
   import nago.Hol;
   import nago.Wozope;


   public class Jypyvim extends Kalefu
   {
      public function Jypyvim() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Vydizys;

      public var hilugev:Bela;

      public var show:Vysorado;

      public var hide:Hol;

      public var remove:Wozope;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.remove.add(this.marujiman);
         this.hilugev.add(this.sycef);
         this.show.add(this.tiqytezed);
         this.hide.add(this.paverosin);
         this.view.visible=false;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.remove.remove(this.marujiman);
         this.hilugev.remove(this.sycef);
         this.show.remove(this.tiqytezed);
         this.hide.remove(this.paverosin);
         return;
      }

      private function marujiman() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.parent.removeChild(this.view);
         return;
      }

      private function sycef() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.visible=!this.view.visible;
         return;
      }

      private function tiqytezed() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.visible=true;
         return;
      }

      private function paverosin() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.visible=false;
         return;
      }
   }

}