package nukobi
{
   import qov.Kalefu;


   public class Dej extends Kalefu
   {
      public function Dej() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:KongregateAccountInfoView;

      public var zefy:Fozydo;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.add(this.cydypugoq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.remove(this.cydypugoq);
         return;
      }

      private function cydypugoq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zefy.kur();
         return;
      }
   }

}