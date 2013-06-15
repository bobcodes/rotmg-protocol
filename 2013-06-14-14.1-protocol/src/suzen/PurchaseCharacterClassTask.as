package suzen
{
   import gycu.Siv;
   import pugem.Account;
   import gokyc.Rud;
   import lemugo.Wokycuku;
   import hunavefeg.Depyrew;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.util.Bycaqa;
   import com.company.assembleegameclient.appengine.Jys;


   public class PurchaseCharacterClassTask extends Siv
   {
      public function PurchaseCharacterClassTask() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var classType:int;

      public var account:Account;

      public var client:Rud;

      public var kejisacok:Wokycuku;

      public var con:Depyrew;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.con.info("PurchaseCharacterClassTask.startTask: Started ");
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/purchaseClassUnlock",this.niwi());
         return;
      }

      public function niwi() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.game_net_user_id=this.account.tamy();
         _loc1_.game_net=this.account.cug();
         _loc1_.play_platform=this.account.rarofu();
         _loc1_.do_login=Parameters.jiqovezu;
         _loc1_.classType=this.classType;
         Bycaqa.timokujo(_loc1_,this.account.pedavitu());
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.con.info("PurchaseCharacterClassTask.onComplete: Ended ");
         dom(param1,param2);
         return;
      }

      private function wow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kejisacok.duqisyd(this.classType,Jys.hukato);
         dom(true);
         return;
      }
   }

}