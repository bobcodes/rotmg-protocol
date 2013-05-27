package cidehov
{
   import gag.Fijarih;
   import aaa.rotmg.account.Account;
   import aaa.rotmg.net.HttpClientWrapper;
   import hotewa.Baqifa;
   import komawowag.Becepog;
   import aaa.rotmg.config.UserConfig;
   import com.company.util.Vuwewuc;
   import com.company.assembleegameclient.appengine.Kewisesa;


   public class PurchaseCharacterClassTask extends Fijarih
   {
      public function PurchaseCharacterClassTask() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var classType:int;

      public var account:Account;

      public var client:HttpClientWrapper;

      public var muwi:Baqifa;

      public var qiqely:Becepog;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.info("PurchaseCharacterClassTask.startTask: Started ");
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/purchaseClassUnlock",this.sam());
         return;
      }

      public function sam() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.game_net_user_id=this.account.zyz();
         _loc1_.game_net=this.account.getAccountType();
         _loc1_.play_platform=this.account.bicydyn();
         _loc1_.do_login=UserConfig.niqeqoly;
         _loc1_.classType=this.classType;
         Vuwewuc.hohohev(_loc1_,this.account.venupog());
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qiqely.info("PurchaseCharacterClassTask.onComplete: Ended ");
         syjavimu(param1,param2);
         return;
      }

      private function mahosubop() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.muwi.vavabukis(this.classType,Kewisesa.pisomykir);
         syjavimu(true);
         return;
      }
   }

}