package vofepimy
{
[CLASS59]   import syfuqycy.Gyz;
   import leselo.Account;
   import dylaqezo.Vusun;
   import qiwyz.Bozakehy;


   public class Wogy extends Gyz
   {
      public function Wogy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var jojun:Vusun;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.tuq())
         {
            this.lawu();
         }
         else
         {
            this.rabakozyb();
         }
         return;
      }

      private function lawu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/verifyage",this.winy());
         return;
      }

      private function winy() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.dera();
         _loc1_.isAgeVerified=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         pylebodyq(param1,param2);
         return;
      }

      private function rabakozyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jojun.jemybal(true);
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}