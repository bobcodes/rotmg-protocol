package kesoji
{
   import dopumitud.Hiwa;
   import vavufer.Bicowu;
   import gag.Gawu;
   import wegyluke.Hez;
   import jiha.Jopu;
   import raqu.Sikywybu;
   import raqu.Zer;
   import raqu.Pobu;
   import gag.Poh;
   import gag.Bysyg;
   import gag.Cub;
   import gag.Myzawob;
   import nukobi.KongregateAccountDetailDialog;
   import cidehov.Hyzifiraj;


   public class Bygocy extends Object
   {
      public function Bygocy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var zoritu:Hiwa;

      public var data:Bicowu;

      public var rurusedi:Gawu;

      public var naval:Hez;

      public var update:Jopu;

      public var tyc:Sikywybu;

      public var nocig:Zer;

      public var vowopuc:Pobu;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Poh = new Poh(this.zoritu,this.bysysa(),this.fupoky());
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function bysysa() : Bysyg {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.vowopuc));
         _loc1_.add(new Myzawob(this.naval,new KongregateAccountDetailDialog()));
         _loc1_.add(new Myzawob(this.update));
         _loc1_.add(new Myzawob(this.tyc,this.qawet()));
         return _loc1_;
      }

      private function fupoky() : Bysyg {
         return new Myzawob(this.nocig,this.zoritu);
      }

      private function qawet() : Hyzifiraj {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="account";
         _loc1_.hiris="linkKongregateAccount";
         return _loc1_;
      }
   }

}