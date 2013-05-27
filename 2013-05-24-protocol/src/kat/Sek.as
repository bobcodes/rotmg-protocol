package kat
{
   import qov.Kalefu;
   import aaa.rotmg.account.Account;
   import jiha.Jopu;


   public class Sek extends Kalefu
   {
      public function Sek() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var view:Jyhyk;

      public var update:Jopu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.tepefufe(this.account.nenyzeqe(),this.account.bugi());
         this.update.add(this.tefipu);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.update.remove(this.tefipu);
         return;
      }

      private function tefipu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.tepefufe(this.account.nenyzeqe(),this.account.bugi());
         return;
      }
   }

}