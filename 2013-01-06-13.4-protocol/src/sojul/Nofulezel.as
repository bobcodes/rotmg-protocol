package sojul
{
[CLASS727]   import tysenyzy.Zovisis;
   import kirofyny.Hehuf;
   import rysuho.Sowetevef;
   import dutes.Vyzynos;
   import leselo.Account;
   import dutes.Vavaq;
   import zib.Kake;
   import bumyj.Hacuvozep;
   import tizozowof.KongregateAccountDetailDialog;
   import kyhawibyc.Fapu;
   import syfuqycy.Motumeq;


   public class Nofulezel extends Zovisis
   {
      public function Nofulezel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:LinkWebAccountDialog;

      public var lyhog:Hehuf;

      public var sutujek:Sowetevef;

      public var lanap:Vyzynos;

      public var account:Account;

      public var qosuvyzuj:Vavaq;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cancel.add(this.onCancel);
         this.view.link.add(this.onLink);
         this.lanap.add(this.wabijy);
         this.ceqigi();
         return;
      }

      private function ceqigi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account is Kake)
         {
            this.qosuvyzuj.dispatch("/linkSteamAccount");
         }
         else
         {
            if(this.account is Hacuvozep)
            {
               this.qosuvyzuj.dispatch("/linkKongregateAccount");
            }
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cancel.add(this.onCancel);
         this.view.link.add(this.onLink);
         this.lanap.remove(this.wabijy);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new KongregateAccountDetailDialog());
         return;
      }

      private function onLink(param1:Fapu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.disable();
         this.sutujek.dispatch(param1);
         return;
      }

      private function wabijy(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.famugujo(param1.error);
         this.view.kiwimuj();
         return;
      }
   }
[/CLASS]
}