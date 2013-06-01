package hedewi
{
   import qov.Kalefu;
   import movimet.Jetadopuc;


   public class Retep extends Kalefu
   {
      public function Retep() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var vuriz:Jetadopuc;

      public var view:Madi;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.zuku(this.vuriz);
         this.view.daqit();
         return;
      }
   }

}