package nozil
{
   import gag.Fijarih;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import negirilu.Fuzi;
   import ruwa.Account;
   import cicaqyp.Qejopahy;


   public class Jofu extends Fijarih
   {
      public function Jofu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var character:SavedCharacter;

      public var client:Fuzi;

      public var account:Account;

      public var model:Qejopahy;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/delete",this.syzycodo());
         return;
      }

      private function syzycodo() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.venupog();
         _loc1_.charId=this.character.charId();
         _loc1_.reason=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         syjavimu(param1,param2);
         return;
      }

      private function foc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.deleteCharacter(this.character.charId());
         return;
      }
   }

}