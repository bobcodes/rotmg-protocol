package wygobylaj
{
   import tytojonib.Kyjefe;
   import tezahusaq.Qawuwak;
   import tezahusaq.Hyqosadu;
   import patozam.Juqacudu;
   import wipivyv.Syvaf;


   public class Posi extends Kyjefe
   {
      public function Posi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Nukuca;

      public var vyqelole:Qawuwak;

      public var fyci:Hyqosadu;

      public var sibibe:Juqacudu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.rygykypo(this.sibibe.make());
         this.vyqelole.addOnce(this.nogimyf);
         this.fyci.add(this.bywowyke);
         return;
      }

      private function nogimyf(param1:Syvaf) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.vyc(param1.bobymyd,param1.fozikuky);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fyci.remove(this.bywowyke);
         return;
      }

      private function bywowyke() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.disable();
         return;
      }
   }

}