package cidehov
{
   import gag.Fijarih;
   import wegyluke.Hez;
   import ruwysepyd.Zew;
   import nas.ErrorDialog;


   public class Qeceseku extends Fijarih
   {
      public function Qeceseku() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var naval:Hez;

      public var pynikyf:PurchaseCharacterClassTask;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.pynikyf.error=="Not enough Gold.")
         {
            this.naval.dispatch(new Zew());
         }
         else
         {
            this.naval.dispatch(new ErrorDialog(this.pynikyf.error));
         }
         return;
      }
   }

}