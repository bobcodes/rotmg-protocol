package ruwysepyd
{
   import qov.Kalefu;
   import sakugyt.Tobafavu;
   import kogyc.Lifew;
   import raqu.Calogu;


   public class Zisifo extends Kalefu
   {
      public function Zisifo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Tobafavu;

      public var servers:Lifew;

      public var zogytuso:Calogu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.sewig.add(this.tih);
         this.view.initialize(this.servers.konozylo());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.sewig.remove(this.tih);
         return;
      }

      private function tih() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zogytuso.dispatch(new TitleView());
         return;
      }
   }

}