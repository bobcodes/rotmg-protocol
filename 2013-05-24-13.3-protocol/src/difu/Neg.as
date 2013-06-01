package difu
{
   import qov.Kalefu;
   import kagijawil.Cibiqot;
   import juw.Minura;


   public class Neg extends Kalefu
   {
      public function Neg() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Necof;

      public var model:Cibiqot;

      public var wajyn:Minura;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.lacib.addOnce(this.bony);
         this.view.siperu.add(this.onButtonClick);
         this.view.vonehy(this.model.honedu());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.lacib.remove(this.bony);
         this.view.siperu.remove(this.onButtonClick);
         return;
      }

      private function onButtonClick() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wajyn.dispatch();
         return;
      }

      private function bony() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.destroy();
         return;
      }
   }

}