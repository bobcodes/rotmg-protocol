package wenono
{
   import tytojonib.Kyjefe;
   import waryp.Belokonij;
   import qudypane.Hawuruje;
   import lyhek.Gyfuca;


   public class Famynajyv extends Kyjefe
   {
      public function Famynajyv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Belokonij;

      public var byzyqe:Hawuruje;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.vodor.add(this.gypuk);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.vodor.remove(this.gypuk);
         return;
      }

      private function gypuk(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.byzyqe.dispatch(new Gyfuca(this.view.accountId,param1));
         return;
      }
   }

}