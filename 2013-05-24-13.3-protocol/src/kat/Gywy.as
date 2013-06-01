package kat
{
   import qov.Kalefu;
   import wegyluke.Hez;
   import jiha.Nikyqy;
   import raqu.Zer;
   import aaa.rotmg.account.Account;
   import raqu.Fesezosit;
   import aaa.rotmg.account.StreamAccount;
   import aaa.rotmg.account.KongregateAccount;
   import nukobi.KongregateAccountDetailDialog;
   import vavufer.Bicowu;
   import gag.Bysyg;


   public class Gywy extends Kalefu
   {
      public function Gywy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:LinkWebAccountDialog;

      public var naval:Hez;

      public var soligima:Nikyqy;

      public var zynitak:Zer;

      public var account:Account;

      public var wekyrap:Fesezosit;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cancel.add(this.onCancel);
         this.view.link.add(this.onLink);
         this.zynitak.add(this.taqo);
         this.lonavug();
         return;
      }

      private function lonavug() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account is StreamAccount)
         {
            this.wekyrap.dispatch("/linkSteamAccount");
         }
         else
         {
            if(this.account is KongregateAccount)
            {
               this.wekyrap.dispatch("/linkKongregateAccount");
            }
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cancel.add(this.onCancel);
         this.view.link.add(this.onLink);
         this.zynitak.remove(this.taqo);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naval.dispatch(new KongregateAccountDetailDialog());
         return;
      }

      private function onLink(param1:Bicowu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.disable();
         this.soligima.dispatch(param1);
         return;
      }

      private function taqo(param1:Bysyg) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.hivuma(param1.error);
         this.view.pinyry();
         return;
      }
   }

}