package jezi
{
[CLASS384]   import syfuqycy.Gyz;
   import leselo.Account;
   import qiwyz.Bozakehy;
   import dylaqezo.Vusun;
   import bikyvym.Voduzak;
   import aaa.Parameters;
   import com.company.util.Vokekizac;
   import com.company.assembleegameclient.appengine.Lelas;


   public class PurchaseCharacterClassTask extends Gyz
   {
      public function PurchaseCharacterClassTask() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var classType:int;

      public var account:Account;

      public var client:Bozakehy;

      public var jojun:Vusun;

      public var wop:Voduzak;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.info("PurchaseCharacterClassTask.startTask: Started ");
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/purchaseClassUnlock",this.fijita());
         return;
      }

      public function fijita() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.game_net_user_id=this.account.fyp();
         _loc1_.game_net=this.account.myqem();
         _loc1_.play_platform=this.account.rom();
         _loc1_.do_login=Parameters.jugywebi;
         _loc1_.classType=this.classType;
         Vokekizac.jugajoj(_loc1_,this.account.dera());
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.wop.info("PurchaseCharacterClassTask.onComplete: Ended ");
         pylebodyq(param1,param2);
         return;
      }

      private function wykewyqo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jojun.got(this.classType,Lelas.luhej);
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}