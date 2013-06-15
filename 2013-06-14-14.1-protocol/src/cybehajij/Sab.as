package cybehajij
{
   import gycu.Siv;
   import vilova.Piwyc;
   import cinyj.Vobewabij;
   import pugem.Account;
   import lemugo.Wokycuku;
   import gokyc.Rud;


   public class Sab extends Siv implements Piwyc
   {
      public function Sab() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Vobewabij;

      public var account:Account;

      public var model:Wokycuku;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/register",this.tyzif());
         return;
      }

      private function tyzif() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.guid=this.account.getUserId();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.dyw();
         _loc1_.isAgeVerified=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         dom(param1,param2);
         return;
      }

      private function wej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.tidezeto(true);
         this.account.sapihaj(this.data.username,this.data.password);
         return;
      }
   }

}