package biqacufo
{
   import qov.Kalefu;
   import vaqob.PortalPanel;
   import zubamyki.Zafy;


   public class Ranomupa extends Kalefu
   {
      public function Ranomupa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:PortalPanel;

      public var meb:Zafy;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.meb.add(this.fahope);
         return;
      }

      private function fahope() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.meb.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.meb.remove(this.fahope);
         return;
      }
   }

}