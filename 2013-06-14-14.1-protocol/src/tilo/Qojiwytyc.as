package tilo
{
   import tytojonib.Kyjefe;
   import car.Pijiz;
   import cizagamym.Lebovas;
   import fodopud.Vogumov;


   public class Qojiwytyc extends Kyjefe
   {
      public function Qojiwytyc() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var sodoqif:Pijiz;

      public var view:PackageOfferDialog;

      public var maliqoji:Lebovas;

      public var wylonesi:Vogumov;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.add(this.ficenu);
         this.view.close.add(this.lyb);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.remove(this.lyb);
         this.view.close.remove(this.ficenu);
         this.view.destroy();
         return;
      }

      private function ficenu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.maliqoji.dispatch();
         this.wylonesi.dispatch(this.view.zylis());
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.maliqoji.dispatch();
         return;
      }
   }

}