package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Suquzujow;
   import nukobi.Fozydo;
   import aaa.rotmg.account.Account;
   import gag.Bysyg;


   public class Kazecylap extends Fijarih
   {
      public function Kazecylap() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var login:Suquzujow;

      public var zefy:Fozydo;

      public var account:Account;

      public var local:Hogoh;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.zefy.isGuest())
         {
            this.lusupyq();
         }
         else
         {
            this.casuzejo();
         }
         return;
      }

      private function casuzejo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.login.davifuju.addOnce(this.tajukysy);
         this.login.start();
         return;
      }

      private function tajukysy(param1:Bysyg, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         syjavimu(true);
         return;
      }

      private function lusupyq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.tesaw(this.local.bazytelac(),"");
         syjavimu(true);
         return;
      }
   }

}