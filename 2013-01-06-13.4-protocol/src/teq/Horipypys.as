package teq
{
[CLASS673]   import syfuqycy.Gyz;
   import vofepimy.Gymat;
   import leselo.Account;
   import dutes.Rumevo;
   import qiwyz.Bozakehy;
   import jezi.Pyruleq;


   public class Horipypys extends Gyz implements Gymat
   {
      public function Horipypys() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var pukyso:Rumevo;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/sendVerifyEmail",this.account.dera());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.zibo();
         }
         else
         {
            this.woneb(param2);
         }
         return;
      }

      private function zibo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qabiji();
         pylebodyq(true);
         return;
      }

      private function qabiji() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="account";
         _loc1_.bozegyt="verifyEmailSent";
         this.pukyso.dispatch(_loc1_);
         return;
      }

      private function woneb(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.account.clear();
         pylebodyq(false);
         return;
      }
   }
[/CLASS]
}