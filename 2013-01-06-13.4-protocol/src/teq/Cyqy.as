package teq
{
[CLASS684]   import syfuqycy.Gyz;
   import vofepimy.Karakicy;
   import kyhawibyc.Fapu;
   import leselo.Account;
   import dylaqezo.Vusun;
   import qiwyz.Bozakehy;


   public class Cyqy extends Gyz implements Karakicy
   {
      public function Cyqy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Fapu;

      public var account:Account;

      public var model:Vusun;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/register",this.winy());
         return;
      }

      private function winy() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.guid=this.account.getUserId();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.wiqen();
         _loc1_.isAgeVerified=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         pylebodyq(param1,param2);
         return;
      }

      private function nefusepap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.jemybal(true);
         this.account.fuv(this.data.username,this.data.password);
         return;
      }
   }
[/CLASS]
}