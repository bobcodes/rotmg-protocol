package cyza
{
   import gag.Fijarih;
   import dopumitud.Kygejym;
   import ruwa.Account;
   import vavufer.Vikaqub;
   import negirilu.Fuzi;


   public class Gava extends Fijarih implements Kygejym
   {
      public function Gava() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var data:Vikaqub;

      public var client:Fuzi;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/changePassword",this.pezosym());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         syjavimu(param1,param2);
         return;
      }

      private function pezosym() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.guid=this.account.getUserId();
         _loc1_.password=this.data.tatu;
         _loc1_.newPassword=this.data.newPassword;
         return _loc1_;
      }

      private function kagaqur() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.account.tesaw(this.account.getUserId(),this.data.newPassword);
         syjavimu(true);
         return;
      }
   }

}