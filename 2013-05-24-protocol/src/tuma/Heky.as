package tuma
{
   import fulaw.Dasin;
   import hotewa.Baqifa;
   import toru.Hepugeq;
   import gag.Gawu;
   import wegyluke.Hez;
   import fulaw.Wuduler;
   import ruwysepyd.Zew;


   public class Heky extends Object
   {
      public function Heky() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var skin:Dasin;

      public var model:Baqifa;

      public var zoritu:Hepugeq;

      public var rurusedi:Gawu;

      public var naval:Hez;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.simowijyw())
         {
            this.hytelehe();
         }
         return;
      }

      private function hytelehe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.vezahaq())
         {
            this.durago();
         }
         else
         {
            this.piwihe();
         }
         return;
      }

      private function simowijyw() : Boolean {
         return this.skin.fepyzat()==Wuduler.PURCHASABLE;
      }

      private function vezahaq() : Boolean {
         return this.model.cuvo()>=this.skin.cost;
      }

      private function durago() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rurusedi.add(this.zoritu);
         this.zoritu.start();
         return;
      }

      private function piwihe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new Zew());
         return;
      }
   }

}