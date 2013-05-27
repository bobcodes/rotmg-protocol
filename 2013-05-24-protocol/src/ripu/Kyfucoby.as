package ripu
{
   import dopumitud.Kygejym;
   import gag.Gawu;
   import wegyluke.Cowymute;
   import wegyluke.Hez;
   import raqu.Zer;
   import raqu.Sikywybu;
   import gag.Poh;
   import gag.Bysyg;
   import gag.Cub;
   import gag.Myzawob;
   import mafu.WebAccountDetailDialog;
   import cidehov.Hyzifiraj;


   public class Kyfucoby extends Object
   {
      public function Kyfucoby() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var zoritu:Kygejym;

      public var rurusedi:Gawu;

      public var close:Cowymute;

      public var naval:Hez;

      public var piv:Zer;

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
         _loc1_.add(new Myzawob(this.tyc,this.pahep()));
         _loc1_.add(new Myzawob(this.naval,new WebAccountDetailDialog()));
         return _loc1_;
      }

      private function zyvyje() : Bysyg {
         return new Myzawob(this.piv,this.zoritu);
      }

      private function pahep() : Hyzifiraj {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="account";
         _loc1_.hiris="passwordChanged";
         return _loc1_;
      }
   }

}