package pufelih
{
   import tytojonib.Kyjefe;
   import jufu.Jawojicyw;
   import cizagamym.Lebovas;
   import lafilow.Kabodela;
   import dicyl.Kumus;


   public class Ryty extends Kyjefe
   {
      public function Ryty() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:BeginnersPackageOfferDialog;

      public var model:Jawojicyw;

      public var gimenakal:Lebovas;

      public var pokiqypus:Kabodela;

      public var zocezuzi:Kumus;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.add(this.ficenu);
         this.view.close.add(this.lyb);
         this.view.qekiju(this.model.rer());
         this.view.fop();
         this.zocezuzi.dispatch(false);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.buy.remove(this.ficenu);
         this.view.close.remove(this.lyb);
         this.zocezuzi.dispatch(true);
         return;
      }

      private function ficenu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gimenakal.dispatch();
         this.pokiqypus.dispatch();
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimenakal.dispatch();
         return;
      }
   }

}