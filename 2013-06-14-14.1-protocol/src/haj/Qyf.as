package haj
{
   import tytojonib.Kyjefe;
   import pomujukir.Cirumy;
   import mavew.Qyryl;


   public class Qyf extends Kyjefe
   {
      public function Qyf() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Kovin;

      public var showToolTip:Cirumy;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.fykig.add(this.tokyji);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.destroy();
         return;
      }

      private function tokyji(param1:Qyryl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.showToolTip.dispatch(param1);
         return;
      }
   }

}