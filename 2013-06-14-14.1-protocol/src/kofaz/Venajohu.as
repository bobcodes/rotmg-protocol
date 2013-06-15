package kofaz
{
   import tytojonib.Kyjefe;
   import fytalis.PortalPanel;
   import dicyl.Degonazev;


   public class Venajohu extends Kyjefe
   {
      public function Venajohu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:PortalPanel;

      public var nitug:Degonazev;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.nitug.add(this.rykon);
         return;
      }

      private function rykon() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nitug.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.nitug.remove(this.rykon);
         return;
      }
   }

}