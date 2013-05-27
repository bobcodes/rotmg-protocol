package cyza
{
   import gag.Fijarih;
   import dopumitud.Wok;
   import ruwa.Account;
   import raqu.Sikywybu;
   import negirilu.Fuzi;
   import cidehov.Hyzifiraj;


   public class Cel extends Fijarih implements Wok
   {
      public function Cel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var tyc:Sikywybu;

      public var client:Fuzi;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/sendVerifyEmail",this.account.venupog());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.pywe();
         }
         else
         {
            this.jyqoqonuz(param2);
         }
         return;
      }

      private function pywe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gypewok();
         syjavimu(true);
         return;
      }

      private function gypewok() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="account";
         _loc1_.hiris="verifyEmailSent";
         this.tyc.dispatch(_loc1_);
         return;
      }

      private function jyqoqonuz(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.account.clear();
         syjavimu(false);
         return;
      }
   }

}