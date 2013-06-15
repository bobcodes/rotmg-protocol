package kipebuti
{
   import tytojonib.Kyjefe;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import mavew.Qyryl;


   public class Puc extends Kyjefe
   {
      public function Puc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Zejimu;

      public var qotufofa:Cirumy;

      public var zawowyn:Boqutujy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qotufofa.add(this.burujan);
         this.zawowyn.add(this.nel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qotufofa.remove(this.burujan);
         this.zawowyn.remove(this.nel);
         return;
      }

      private function burujan(param1:Qyryl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.show(param1);
         return;
      }

      private function nel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hide();
         return;
      }
   }

}