package haj
{
   import tytojonib.Kyjefe;
   import fanij.Namejaja;
   import cizagamym.Boquzojul;
   import fanij.Mitat;


   public class Maqyjokym extends Kyjefe
   {
      public function Maqyjokym() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:PetFeeder;

      public var cybeco:Namejaja;

      public var ridecy:Boquzojul;

      public var hibuc:Mitat;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.hibuc.baluq)
         {
            this.hibuc.baluq=this.cybeco.tigosulo();
         }
         this.view.initialize(this.hibuc);
         this.view.toreg.addOnce(this.toreg);
         return;
      }

      private function toreg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hibuc.selected=Mitat.LEFT;
         return;
      }
   }

}