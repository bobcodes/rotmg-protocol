package sefylew
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import civino.Posobew;


   public class Toqinyc extends Kyjefe
   {
      public function Toqinyc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var view:Rut;

      public var update:Posobew;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.zyfa(this.account.dodet(),this.account.zuqic());
         this.update.add(this.qybu);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.update.remove(this.qybu);
         return;
      }

      private function qybu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.zyfa(this.account.dodet(),this.account.zuqic());
         return;
      }
   }

}