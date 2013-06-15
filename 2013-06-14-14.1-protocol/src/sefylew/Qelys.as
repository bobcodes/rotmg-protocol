package sefylew
{
   import tytojonib.Kyjefe;
   import cizagamym.Boquzojul;
   import civino.Jecoro;
   import pomujukir.Doli;
   import pugem.Account;
   import pomujukir.Hygawulil;
   import tam.Syzev;
   import byredo.Monewys;
   import taruco.KongregateAccountDetailDialog;
   import cinyj.Vobewabij;
   import gycu.Cyqe;


   public class Qelys extends Kyjefe
   {
      public function Qelys() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:LinkWebAccountDialog;

      public var ridecy:Boquzojul;

      public var riquzony:Jecoro;

      public var wefokabi:Doli;

      public var account:Account;

      public var lom:Hygawulil;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.cancel.add(this.onCancel);
         this.view.link.add(this.onLink);
         this.wefokabi.add(this.qykaq);
         this.gice();
         return;
      }

      private function gice() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account is Syzev)
         {
            this.lom.dispatch("/linkSteamAccount");
         }
         else
         {
            if(this.account is Monewys)
            {
               this.lom.dispatch("/linkKongregateAccount");
            }
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.cancel.add(this.onCancel);
         this.view.link.add(this.onLink);
         this.wefokabi.remove(this.qykaq);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new KongregateAccountDetailDialog());
         return;
      }

      private function onLink(param1:Vobewabij) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.disable();
         this.riquzony.dispatch(param1);
         return;
      }

      private function qykaq(param1:Cyqe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.nirin(param1.error);
         this.view.kafuwuge();
         return;
      }
   }

}