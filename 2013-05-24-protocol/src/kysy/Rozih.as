package kysy
{
   import qov.Kalefu;
   import nitotohyk.Zyqyt;
   import byzany.Qopel;
   import jedytoh.Toqov;
   import raqu.Calogu;
   import ruwysepyd.TitleView;


   public class Rozih extends Kalefu
   {
      public function Rozih() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var dom:Zyqyt;

      public var popa:Qopel;

      public var lapy:Toqov;

      public var view:Ducuqa;

      public var zogytuso:Calogu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.busileb(this.popa.symydogij());
         this.view.setSelected(this.popa.mubis(this.popa.liw()));
         this.view.rimuq.add(this.gehira);
         this.view.back.add(this.cysaq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.rimuq.remove(this.gehira);
         this.view.back.remove(this.cysaq);
         return;
      }

      private function cysaq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zogytuso.dispatch(new TitleView());
         return;
      }

      private function gehira(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lapy.dispatch(this.popa.lubuvyn(param1));
         return;
      }
   }

}