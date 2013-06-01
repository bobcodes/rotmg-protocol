package saveduw
{
[CLASS1326]   import syfuqycy.Gyz;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import qiwyz.Bozakehy;
   import leselo.Account;
   import tevyv.Taw;


   public class Vetezilu extends Gyz
   {
      public function Vetezilu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var character:SavedCharacter;

      public var client:Bozakehy;

      public var account:Account;

      public var model:Taw;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/delete",this.solab());
         return;
      }

      private function solab() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.account.dera();
         _loc1_.charId=this.character.charId();
         _loc1_.reason=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         pylebodyq(param1,param2);
         return;
      }

      private function cegykica() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.deleteCharacter(this.character.charId());
         return;
      }
   }
[/CLASS]
}