package ripu
{
   import dopumitud.Rykuzen;
   import gag.Gawu;
   import raqu.Zer;
   import jiha.Jopu;
   import wegyluke.Hez;
   import raqu.Sikywybu;
   import gag.Poh;
   import gag.Bysyg;
   import gag.Cub;
   import gag.Myzawob;
   import mafu.WebAccountDetailDialog;
   import cidehov.Hyzifiraj;


   public class Natifiguc extends Object
   {
      public function Natifiguc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var zoritu:Rykuzen;

      public var rurusedi:Gawu;

      public var nocig:Zer;

      public var wov:Jopu;

      public var naval:Hez;

      public var tyc:Sikywybu;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Poh = new Poh(this.zoritu,this.dohesyz(),this.zyvyje());
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function dohesyz() : Bysyg {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.tyc,this.qawet()));
         _loc1_.add(new Myzawob(this.wov));
         _loc1_.add(new Myzawob(this.naval,new WebAccountDetailDialog()));
         return _loc1_;
      }

      private function zyvyje() : Myzawob {
         return new Myzawob(this.nocig,this.zoritu);
      }

      private function qawet() : Hyzifiraj {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="account";
         _loc1_.hiris="accountRegistered";
         return _loc1_;
      }
   }

}