package kofaz
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import cizagamym.Boquzojul;
   import pusy.Lyfezy;
   import zekeqa.Nohysoj;
   import sefylew.Fadyqe;
   import komi.Vibemod;


   public class NameChangerPanelMediator extends Kyjefe
   {
      public function NameChangerPanelMediator() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var view:NameChangerPanel;

      public var ridecy:Boquzojul;

      public var foryc:Lyfezy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.chooseName.add(this.begen);
         this.foryc.add(this.saresyho);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.chooseName.remove(this.begen);
         this.foryc.remove(this.saresyho);
         return;
      }

      private function begen() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account.zuqic())
         {
            this.ridecy.dispatch(new Nohysoj(this.view.gs_,this.view.cuc));
         }
         else
         {
            this.ridecy.dispatch(new Fadyqe(Vibemod.hulylumid));
         }
         return;
      }

      private function saresyho(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.fyty(param1);
         return;
      }
   }

}