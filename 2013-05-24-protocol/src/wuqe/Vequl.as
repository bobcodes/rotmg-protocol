package wuqe
{
   import gag.Fijarih;
   import ruwa.Account;
   import kagijawil.Cibiqot;
   import negirilu.Fuzi;


   public class Vequl extends Fijarih
   {
      public function Vequl() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var model:Cibiqot;

      public var client:Fuzi;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/getBeginnerPackageTimeLeft",this.account.venupog());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wunege(param2);
         return;
      }

      private function wunege(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = new XML(param1)[0];
         this.model.novebe(_loc2_);
         syjavimu(_loc2_>0);
         return;
      }
   }

}