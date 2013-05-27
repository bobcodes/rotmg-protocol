package qefinah
{
   import qov.Kalefu;
   import flash.events.MouseEvent;


   public class Gecifuwej extends Kalefu
   {
      public function Gecifuwej() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Dyloq;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pynece.add(this.onMouseOut);
         this.view.piboc.add(this.onMouseOver);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pynece.remove(this.onMouseOut);
         this.view.piboc.remove(this.onMouseOver);
         this.view.nepijawij();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.rapatu();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.nepijawij();
         return;
      }
   }

}