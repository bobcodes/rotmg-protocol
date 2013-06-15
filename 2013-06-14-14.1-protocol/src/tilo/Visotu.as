package tilo
{
   import tytojonib.Kyjefe;
   import cizagamym.Lebovas;


   public class Visotu extends Kyjefe
   {
      public function Visotu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Wegyqide;

      public var closeDialogs:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.add(this.nydegazeq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.remove(this.nydegazeq);
         return;
      }

      private function nydegazeq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }
   }

}