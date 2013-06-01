package peciryf
{
   import dopumitud.Gefohi;
   import gag.Gawu;
   import raqu.Wolugyty;
   import wegyluke.Hez;
   import gag.Poh;
   import gag.Bysyg;
   import gag.Myzawob;
   import sakugyt.CharacterSelectionAndNewsScreen;
   import nas.ErrorDialog;


   public class Hog extends Object
   {
      public function Hog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const teqemugu:String = "Unable to verify age";

      public var zoritu:Gefohi;

      public var rurusedi:Gawu;

      public var zogytuso:Wolugyty;

      public var naval:Hez;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Poh = new Poh(this.zoritu);
         _loc1_.nunubepyk(this.bysysa());
         _loc1_.neqowote(this.fupoky());
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function bysysa() : Bysyg {
         return new Myzawob(this.zogytuso,new CharacterSelectionAndNewsScreen());
      }

      private function fupoky() : Bysyg {
         return new Myzawob(this.naval,new ErrorDialog(this.teqemugu));
      }
   }

}