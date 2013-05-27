package zybome
{
   import lagizizoq.Mys;
   import aaa.rotmg.account.Account;
   import jiha.Hevorim;
   import peciryf.Qupicyrab;
   import peciryf.Lizyk;
   import aaa.rotmg.account.KabamAccount;
   import aaa.rotmg.account.RotmgAccount;


   public class Vec extends Object
   {
      public function Vec() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var davyl:Mys;

      public var account:Account;

      public var data:XML;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.davyl.map(Hevorim).bez(this.jehydor());
         return;
      }

      private function jehydor() : Class {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.segagagyw()?Qupicyrab:Lizyk;
      }

      private function segagagyw() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.account is KabamAccount||this.account is RotmgAccount)&&this.data["UseExternalPayments"]==null||(Boolean(int(this.data["UseExternalPayments"])));
      }
   }

}