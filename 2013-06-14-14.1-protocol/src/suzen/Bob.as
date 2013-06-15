package suzen
{
   import gycu.Siv;
   import cizagamym.Boquzojul;
   import wenono.Jiwir;
   import vysob.ErrorDialog;


   public class Bob extends Siv
   {
      public function Bob() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var ridecy:Boquzojul;

      public var wudy:PurchaseCharacterClassTask;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.wudy.error=="Not enough Gold.")
         {
            this.ridecy.dispatch(new Jiwir());
         }
         else
         {
            this.ridecy.dispatch(new ErrorDialog(this.wudy.error));
         }
         return;
      }
   }

}