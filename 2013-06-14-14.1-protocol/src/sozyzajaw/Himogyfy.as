package sozyzajaw
{
   import lemugo.Wokycuku;
   import tygole.Govututa;
   import pomujukir.Wizuwub;
   import pomujukir.Bemivu;
   import pomujukir.Kovi;
   import qudypane.Hawuruje;
   import wipivyv.Memysoh;
   import lyhek.Gyfuca;
   import lyhek.Cumezyl;
   import waryp.CharacterSelectionAndNewsScreen;


   public class Himogyfy extends Object
   {
      public function Himogyfy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var player:Wokycuku;

      public var model:Govututa;

      public var luzej:Wizuwub;

      public var syfu:Bemivu;

      public var hus:Kovi;

      public var byzyqe:Hawuruje;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.luzej.dispatch();
         if(this.model.buhizo())
         {
            this.weqyqyr();
         }
         else
         {
            this.jesifuror();
         }
         return;
      }

      private function weqyqyr() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Memysoh = this.model.vocafeq();
         var _loc2_:Cumezyl = new Gyfuca(this.player.sosimu(),_loc1_.charId_);
         this.byzyqe.dispatch(_loc2_);
         return;
      }

      private function jesifuror() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hus.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }
   }

}