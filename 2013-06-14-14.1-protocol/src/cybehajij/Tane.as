package cybehajij
{
   import gycu.Siv;
   import vilova.Cypoj;
   import pugem.Account;
   import cinyj.Fycokyrub;
   import gokyc.Rud;


   public class Tane extends Siv implements Cypoj
   {
      public function Tane() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var data:Fycokyrub;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/changePassword",this.tyzif());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         dom(param1,param2);
         return;
      }

      private function tyzif() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.guid=this.account.getUserId();
         _loc1_.password=this.data.wote;
         _loc1_.newPassword=this.data.newPassword;
         return _loc1_;
      }

      private function tyzan() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.sapihaj(this.account.getUserId(),this.data.newPassword);
         dom(true);
         return;
      }
   }

}