package ruwa
{
   import dopumitud.Toq;
   import gag.Gawu;
   import raqu.Calogu;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import hotewa.Baqifa;
   import raqu.Sikywybu;
   import ruwysepyd.CharacterSlotNeedGoldDialog;
   import kat.BuyingDialog;
   import gag.Cub;
   import gag.Poh;
   import gag.Myzawob;
   import gag.Bysyg;
   import sakugyt.CharacterSelectionAndNewsScreen;
   import cidehov.Hyzifiraj;
   import nas.ErrorDialog;


   public class Betys extends Object
   {
      public function Betys() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var price:int;

      public var zoritu:Toq;

      public var rurusedi:Gawu;

      public var zogytuso:Calogu;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      public var model:Baqifa;

      public var account:Account;

      public var tyc:Sikywybu;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.geto())
         {
            this.cow();
         }
         else
         {
            this.pugyq();
         }
         return;
      }

      private function geto() : Boolean {
         return this.model.cuvo()<this.model.kut();
      }

      private function cow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naval.dispatch(new CharacterSlotNeedGoldDialog());
         return;
      }

      private function pugyq() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.naval.dispatch(new BuyingDialog());
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Poh(this.zoritu,this.bysysa(),this.fupoky()));
         _loc1_.add(new Myzawob(this.tusagecu));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function bysysa() : Bysyg {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.zogytuso,new CharacterSelectionAndNewsScreen()));
         _loc1_.add(new Myzawob(this.tyc,this.pahep()));
         return _loc1_;
      }

      private function pahep() : Hyzifiraj {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="credits";
         _loc1_.hiris="buyConverted";
         _loc1_.label="Character Slot";
         _loc1_.value=this.price;
         return _loc1_;
      }

      private function fupoky() : Bysyg {
         return new Myzawob(this.naval,new ErrorDialog("Unable to complete character slot purchase"));
      }
   }

}