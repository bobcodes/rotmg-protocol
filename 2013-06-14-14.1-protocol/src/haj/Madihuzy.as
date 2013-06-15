package haj
{
   import tytojonib.Kyjefe;
   import cizagamym.Dynydo;
   import cizagamym.Boquzojul;
   import flash.events.MouseEvent;
   import vuwit.Rudive;
   import vuwit.Domuh;


   public class Madihuzy extends Kyjefe
   {
      public function Madihuzy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Rikura;

      public var sagupuve:Dynydo;

      public var ridecy:Boquzojul;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.init();
         this.view.fusocy.addEventListener(MouseEvent.CLICK,this.qahe);
         this.view.cod.addEventListener(MouseEvent.CLICK,this.nukylok);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.destroy();
         return;
      }

      protected function nukylok(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ridecy.dispatch(new Rudive());
         return;
      }

      protected function qahe(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sagupuve.dispatch(new Domuh());
         return;
      }
   }

}