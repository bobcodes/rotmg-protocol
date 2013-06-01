package hapefapu
{
   import zelinoryv.Vib;
   import raqu.Pobu;
   import raqu.Wolugyty;
   import sakugyt.CharacterSelectionAndNewsScreen;
   import ruwysepyd.TitleView;


   public class Nymed extends Object
   {
      public function Nymed() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var model:Vib;

      public var vowopuc:Pobu;

      public var zogytuso:Wolugyty;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.tecefado())
         {
            this.molasiruf();
         }
         else
         {
            this.migy();
         }
         return;
      }

      private function molasiruf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.zedos();
         this.vowopuc.dispatch();
         this.zogytuso.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function migy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zogytuso.dispatch(new TitleView());
         return;
      }
   }

}