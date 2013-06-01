package meqagudu
{
   import dopumitud.Hiwa;
   import vavufer.Bicowu;
   import gag.Gawu;
   import wegyluke.Hez;
   import raqu.Sikywybu;
   import jiha.Jopu;
   import raqu.Zer;
   import raqu.Pobu;
   import gag.Poh;
   import gag.Cub;
   import gag.Myzawob;
   import tycerinos.SteamAccountDetailDialog;
   import cidehov.Hyzifiraj;
   import gag.Bysyg;


   public class Kyhi extends Object
   {
      public function Kyhi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var zoritu:Hiwa;

      public var data:Bicowu;

      public var rurusedi:Gawu;

      public var naval:Hez;

      public var tyc:Sikywybu;

      public var update:Jopu;

      public var nocig:Zer;

      public var vowopuc:Pobu;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Poh = new Poh(this.zoritu,this.zafulocit(),this.hilyqosar());
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function zafulocit() : Cub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.vowopuc));
         _loc1_.add(new Myzawob(this.tyc,this.qawet()));
         _loc1_.add(new Myzawob(this.update));
         _loc1_.add(new Myzawob(this.naval,new SteamAccountDetailDialog()));
         return _loc1_;
      }

      private function qawet() : Hyzifiraj {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="account";
         _loc1_.hiris="linkSteamAccount";
         return _loc1_;
      }

      private function hilyqosar() : Bysyg {
         return new Myzawob(this.nocig,this.zoritu);
      }
   }

}