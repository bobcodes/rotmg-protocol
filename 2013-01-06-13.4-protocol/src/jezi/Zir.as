package jezi
{
[CLASS386]   import syfuqycy.Gyz;
   import kirofyny.Hehuf;
   import tidi.Vujiru;
   import cejyva.ErrorDialog;


   public class Zir extends Gyz
   {
      public function Zir() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var lyhog:Hehuf;

      public var qepycug:PurchaseCharacterClassTask;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.qepycug.error=="Not enough Gold.")
         {
            this.lyhog.dispatch(new Vujiru());
         }
         else
         {
            this.lyhog.dispatch(new ErrorDialog(this.qepycug.error));
         }
         return;
      }
   }
[/CLASS]
}