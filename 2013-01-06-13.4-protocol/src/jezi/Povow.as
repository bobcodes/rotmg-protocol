package jezi
{
[CLASS381]   import syfuqycy.Gyz;
   import bikyvym.Voduzak;
   import qiwyz.Bozakehy;
   import leselo.Account;
   import dutes.Kisicy;


   public class Povow extends Gyz
   {
      public function Povow() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var wop:Voduzak;

      public var client:Bozakehy;

      public var account:Account;

      public var giqigo:Kisicy;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/app/init",{game_net:this.account.myqem()});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         pylebodyq(param1,param2);
         return;
      }
   }
[/CLASS]
}