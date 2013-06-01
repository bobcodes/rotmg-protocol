package teq
{
[CLASS681]   import syfuqycy.Gyz;
   import vofepimy.Judujimu;
   import leselo.Account;
   import kyhawibyc.Jotat;
   import qiwyz.Bozakehy;


   public class Caryz extends Gyz implements Judujimu
   {
      public function Caryz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var data:Jotat;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/changePassword",this.winy());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         pylebodyq(param1,param2);
         return;
      }

      private function winy() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.guid=this.account.getUserId();
         _loc1_.password=this.data.dyhogo;
         _loc1_.newPassword=this.data.newPassword;
         return _loc1_;
      }

      private function zij() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.account.fuv(this.account.getUserId(),this.data.newPassword);
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}