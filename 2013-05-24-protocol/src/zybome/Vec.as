package zybome
{
   import lagizizoq.Mys;
   import ruwa.Account;
   import jiha.Hevorim;
   import peciryf.Qupicyrab;
   import peciryf.Lizyk;
   import ninu.Ryq;
   import ric.Durujeduj;


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
         return (this.account is Ryq||this.account is Durujeduj)&&this.data["UseExternalPayments"]==null||(Boolean(int(this.data["UseExternalPayments"])));
      }
   }

}