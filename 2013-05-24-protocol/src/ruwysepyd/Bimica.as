package ruwysepyd
{
   import qov.Kalefu;
   import sakugyt.Mecunenim;
   import aaa.rotmg.account.Account;
   import hotewa.Baqifa;
   import raqu.Hujuhy;
   import raqu.Goq;
   import kat.Jyhyk;
   import mafu.Few;
   import naj.KabamAccountInfoView;
   import nukobi.KongregateAccountInfoView;
   import tycerinos.Madiwuj;
   import aaa.rotmg.account.RotmgAccount;
   import aaa.rotmg.account.KabamAccount;
   import aaa.rotmg.account.KongregateAccount;
   import aaa.rotmg.account.StreamAccount;
   import povopito.Ryduwi;


   public class Bimica extends Kalefu
   {
      public function Bimica() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Mecunenim;

      public var account:Account;

      public var muwi:Baqifa;

      public var kyzytanuh:Hujuhy;

      public var tihe:Goq;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.tooltip.add(this.dykoto);
         this.view.kewe(this.muwi.lyr());
         this.view.fadyb(this.muwi.mybyqevo(),this.muwi.vypykosi());
         this.view.mogi(this.kuq());
         return;
      }

      private function kuq() : Jyhyk {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Jyhyk = null;
         switch(this.account.getAccountType())
         {
            case RotmgAccount.ACCOUNT_TYPE:
               _loc1_=new Few();
               break;
            case KabamAccount.ACCOUNT_TYPE:
               _loc1_=new KabamAccountInfoView();
               break;
            case KongregateAccount.ACCOUNT_TYPE:
               _loc1_=new KongregateAccountInfoView();
               break;
            case StreamAccount.ACCOUNT_TYPE:
               _loc1_=new Madiwuj();
               break;
         }
         return _loc1_;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.tooltip.remove(this.dykoto);
         this.tihe.dispatch();
         return;
      }

      private function dykoto(param1:Ryduwi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kyzytanuh.dispatch(param1);
         return;
      }
   }

}