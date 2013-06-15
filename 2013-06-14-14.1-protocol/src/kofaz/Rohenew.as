package kofaz
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import cizagamym.Boquzojul;
   import civino.Duposid;
   import sefylew.Fadyqe;
   import komi.Vibemod;


   public class Rohenew extends Kyjefe
   {
      public function Rohenew() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var view:MoneyChangerPanel;

      public var ridecy:Boquzojul;

      public var pafysaqyc:Duposid;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.roke.add(this.vitohy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.roke.remove(this.vitohy);
         return;
      }

      private function vitohy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.zuqic())
         {
            this.pafysaqyc.dispatch();
         }
         else
         {
            this.ridecy.dispatch(new Fadyqe(Vibemod.fyso));
         }
         return;
      }
   }

}