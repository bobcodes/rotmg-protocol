package kesoji
{
   import vavufer.Bicowu;
   import dopumitud.Rykuzen;
   import gag.Gawu;
   import jiha.Jopu;
   import wegyluke.Hez;
   import raqu.Zer;
   import gag.Poh;
   import gag.Cub;
   import gag.Myzawob;
   import nukobi.KongregateAccountDetailDialog;
   import gag.Bysyg;


   public class Nepihac extends Object
   {
      public function Nepihac() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Bicowu;

      public var zoritu:Rykuzen;

      public var rurusedi:Gawu;

      public var update:Jopu;

      public var naval:Hez;

      public var nocig:Zer;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Poh = new Poh(this.zoritu,this.zafulocit(),this.hilyqosar());
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function zafulocit() : Cub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.update));
         _loc1_.add(new Myzawob(this.naval,new KongregateAccountDetailDialog()));
         return _loc1_;
      }

      private function hilyqosar() : Bysyg {
         return new Myzawob(this.nocig,this.zoritu);
      }
   }

}