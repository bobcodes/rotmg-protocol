package cyza
{
   import gag.Fijarih;
   import dopumitud.Rykuzen;
   import vavufer.Bicowu;
   import aaa.rotmg.account.Account;
   import hotewa.Baqifa;
   import aaa.rotmg.net.HttpClientWrapper;


   public class Duma extends Fijarih implements Rykuzen
   {
      public function Duma() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:Bicowu;

      public var account:Account;

      public var model:Baqifa;

      public var client:HttpClientWrapper;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/register",this.pezosym());
         return;
      }

      private function pezosym() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.guid=this.account.getUserId();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.getRotmgUrlLibParamEntryPoint();
         _loc1_.isAgeVerified=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         syjavimu(param1,param2);
         return;
      }

      private function ruvyzoku() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.cufelehed(true);
         this.account.tesaw(this.data.username,this.data.password);
         return;
      }
   }

}