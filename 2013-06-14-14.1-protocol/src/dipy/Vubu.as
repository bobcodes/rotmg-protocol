package dipy
{
   import gycu.Siv;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import gokyc.Rud;
   import pugem.Account;
   import hirupuhel.Wygoqu;


   public class Vubu extends Siv
   {
      public function Vubu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var character:SavedCharacter;

      public var client:Rud;

      public var account:Account;

      public var model:Wygoqu;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/GlobalNotificationActionte",this.havomoreq());
         return;
      }

      private function havomoreq() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.pedavitu();
         _loc1_.charId=this.character.charId();
         _loc1_.reason=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         dom(param1,param2);
         return;
      }

      private function ketupaju() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.GlobalNotificationActionteCharacter(this.character.charId());
         return;
      }
   }

}