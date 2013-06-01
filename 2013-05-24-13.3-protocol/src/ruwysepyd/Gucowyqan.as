package ruwysepyd
{
   import qov.Kalefu;
   import sakugyt.Pabacuviz;
   import raqu.Calogu;


   public class Gucowyqan extends Kalefu
   {
      public function Gucowyqan() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Pabacuviz;

      public var zogytuso:Calogu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.add(this.rysutipy);
         this.view.initialize();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.remove(this.rysutipy);
         return;
      }

      private function rysutipy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zogytuso.dispatch(new TitleView());
         return;
      }
   }

}