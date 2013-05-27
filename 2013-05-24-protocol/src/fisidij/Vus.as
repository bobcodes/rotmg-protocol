package fisidij
{
   import nozil.Jofu;
   import gag.Gawu;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import raqu.Calogu;
   import gag.Cub;
   import gag.Myzawob;
   import mipiqevul.DeletingCharacterView;
   import gag.Poh;
   import gag.Bysyg;
   import sakugyt.CharacterSelectionAndNewsScreen;


   public class Vus extends Object
   {
      public function Vus() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var zoritu:Jofu;

      public var rurusedi:Gawu;

      public var naval:Hez;

      public var closeDialogs:Cowymute;

      public var zogytuso:Calogu;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.naval,new DeletingCharacterView()));
         _loc1_.add(new Poh(this.zoritu,this.zafulocit(),this.hilyqosar()));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function zafulocit() : Bysyg {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.zogytuso,new CharacterSelectionAndNewsScreen()));
         _loc1_.add(new Myzawob(this.closeDialogs));
         return _loc1_;
      }

      private function hilyqosar() : Bysyg {
         return new Myzawob(this.naval,"Unable to delete character");
      }
   }

}