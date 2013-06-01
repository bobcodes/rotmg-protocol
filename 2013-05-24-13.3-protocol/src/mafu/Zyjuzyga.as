package mafu
{
   import qov.Kalefu;
   import aaa.rotmg.account.Account;
   import raqu.Sikywybu;
   import jiha.Dabopo;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import jiha.Jopu;
   import cidehov.Hyzifiraj;


   public class Zyjuzyga extends Kalefu
   {
      public function Zyjuzyga() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:WebAccountDetailDialog;

      public var account:Account;

      public var tyc:Sikywybu;

      public var verify:Dabopo;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      public var wov:Jopu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.qupabak(this.account.nenyzeqe(),this.account.tyso());
         this.view.change.add(this.kosu);
         this.view.logout.add(this.ledylowo);
         this.view.cancel.add(this.zun);
         this.view.verify.add(this.rifyco);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.change.remove(this.kosu);
         this.view.logout.remove(this.ledylowo);
         this.view.cancel.remove(this.zun);
         this.view.verify.remove(this.rifyco);
         return;
      }

      private function kosu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naval.dispatch(new WebChangePasswordDialog());
         return;
      }

      private function ledylowo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.koqopar();
         this.account.clear();
         this.wov.dispatch();
         this.naval.dispatch(new WebLoginDialog());
         return;
      }

      private function koqopar() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="account";
         _loc1_.hiris="loggedOut";
         this.tyc.dispatch(_loc1_);
         return;
      }

      private function zun() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tusagecu.dispatch();
         return;
      }

      private function rifyco() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.verify.dispatch();
         return;
      }
   }

}