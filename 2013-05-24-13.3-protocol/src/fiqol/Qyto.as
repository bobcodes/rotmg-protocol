package fiqol
{
   import aaa.rotmg.account.Account;
   import kagijawil.Cibiqot;
   import wegyluke.Hez;
   import wuqe.Vequl;
   import dopumitud.Kanyr;
   import gag.Gawu;
   import gag.Poh;
   import gag.Bysyg;
   import gag.Cub;
   import gag.Myzawob;
   import difu.BeginnersPackageOfferDialog;
   import difu.Huqu;


   public class Qyto extends Object
   {
      public function Qyto() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var model:Cibiqot;

      public var naval:Hez;

      public var honedu:Vequl;

      public var zunofi:Kanyr;

      public var rurusedi:Gawu;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Poh = new Poh(this.honedu,this.bysysa(),this.fupoky());
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function bysysa() : Bysyg {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.naval,new BeginnersPackageOfferDialog()));
         return _loc1_;
      }

      private function fupoky() : Bysyg {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.naval,new Huqu()));
         return _loc1_;
      }
   }

}