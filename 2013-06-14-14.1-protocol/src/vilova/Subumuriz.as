package vilova
{
   import gycu.Siv;
   import pugem.Account;
   import lemugo.Wokycuku;
   import gokyc.Rud;


   public class Subumuriz extends Siv
   {
      public function Subumuriz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var kejisacok:Wokycuku;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.zuqic())
         {
            this.bylaluwod();
         }
         else
         {
            this.qevegit();
         }
         return;
      }

      private function bylaluwod() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/verifyage",this.tyzif());
         return;
      }

      private function tyzif() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.account.pedavitu();
         _loc1_.isAgeVerified=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         dom(param1,param2);
         return;
      }

      private function qevegit() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kejisacok.tidezeto(true);
         dom(true);
         return;
      }
   }

}