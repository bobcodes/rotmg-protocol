package sanu
{
   import pugem.Account;
   import cizagamym.Boquzojul;
   import gabufo.WebAccountDetailDialog;
   import gabufo.Meqeguru;


   public class Kizirali extends Object
   {
      public function Kizirali() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var ridecy:Boquzojul;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.zuqic())
         {
            this.ridecy.dispatch(new WebAccountDetailDialog());
         }
         else
         {
            this.ridecy.dispatch(new Meqeguru());
         }
         return;
      }
   }

}