package wenono
{
   import tytojonib.Kyjefe;
   import waryp.Letu;
   import lemugo.Wokycuku;
   import pomujukir.Bemivu;
   import dicyl.Sytidyha;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import pomujukir.Jafojuleq;
   import pomujukir.Mova;
   import pomujukir.Wipumid;
   import poho.Kyhy;
   import waryp.CharacterSelectionAndNewsScreen;
   import fysy.Dovo;
   import flash.display.Sprite;


   public class Zada extends Kyjefe
   {
      public function Zada() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Letu;

      public var kejisacok:Wokycuku;

      public var syfu:Bemivu;

      public var naga:Sytidyha;

      public var qotufofa:Cirumy;

      public var zawowyn:Boqutujy;

      public var hebemeky:Jafojuleq;

      public var suwode:Mova;

      public var bevi:Wipumid;

      public var jopyza:Kyhy;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.selected.add(this.tyhecete);
         this.view.close.add(this.lyb);
         this.view.tooltip.add(this.hyguzasa);
         this.view.buy.add(this.ficenu);
         this.hebemeky.add(this.zebemak);
         this.suwode.add(this.wytaretul);
         this.view.initialize(this.kejisacok);
         return;
      }

      private function wytaretul(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.fawadu(this.kejisacok.pucutad(),this.kejisacok.wopufud());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.selected.remove(this.tyhecete);
         this.view.close.remove(this.lyb);
         this.view.tooltip.remove(this.hyguzasa);
         this.view.buy.remove(this.ficenu);
         this.suwode.remove(this.wytaretul);
         this.hebemeky.remove(this.zebemak);
         return;
      }

      private function lyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function tyhecete(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jopyza.gug(param1).gowek(true);
         this.syfu.dispatch(new Dovo());
         return;
      }

      private function hyguzasa(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.qotufofa.dispatch(param1);
         }
         else
         {
            this.zawowyn.dispatch();
         }
         return;
      }

      private function zebemak() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.update(this.kejisacok);
         return;
      }

      private function ficenu(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bevi.dispatch(param1);
         return;
      }
   }

}