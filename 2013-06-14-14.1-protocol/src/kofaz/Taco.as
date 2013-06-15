package kofaz
{
   import tytojonib.Kyjefe;
   import lemugo.Wokycuku;
   import civino.Duposid;


   public class Taco extends Kyjefe
   {
      public function Taco() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Rynomyd;

      public var model:Wokycuku;

      public var pafysaqyc:Duposid;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.gokecu.add(this.vyf);
         this.model.qalimu.add(this.guh);
         this.view.cunif.add(this.tabiweryc);
         this.view.draw(this.model.pucutad(),this.model.wopufud());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.gokecu.remove(this.vyf);
         this.model.qalimu.remove(this.guh);
         this.view.cunif.remove(this.tabiweryc);
         return;
      }

      private function vyf(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw(param1,this.model.wopufud());
         return;
      }

      private function guh(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw(this.model.pucutad(),param1);
         return;
      }

      private function tabiweryc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pafysaqyc.dispatch();
         return;
      }
   }

}