package nukobi
{
   import qov.Kalefu;
   import kat.RegisterWebAccountDialog;
   import jiha.Diqyc;
   import vavufer.Bicowu;


   public class Mig extends Kalefu
   {
      public function Mig() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:RegisterWebAccountDialog;

      public var register:Diqyc;

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

      private function cydypugoq(param1:Bicowu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.register.dispatch(param1);
         return;
      }
   }

}