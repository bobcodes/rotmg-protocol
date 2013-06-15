package gudon
{
   import tytojonib.Kyjefe;
   import zynuqu.Zapy;
   import tygole.Govututa;
   import qudypane.Hawuruje;
   import fuqefo.Cibivo;
   import fuqefo.Wenom;
   import fuqefo.Hig;
   import pomujukir.Hygawulil;
   import zynuqu.Timespan;
   import zynuqu.Topunu;


   public class Rub extends Kyjefe
   {
      public function Rub() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Rybapyj;

      public var model:Zapy;

      public var vegah:Govututa;

      public var sajoqyl:Hawuruje;

      public var roby:Cibivo;

      public var update:Wenom;

      public var exit:Hig;

      public var taja:Hygawulil;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.taja.dispatch("/legendsScreen");
         this.view.close.add(this.lyb);
         this.view.relygevah.add(this.tepamateh);
         this.view.wibulotavy.add(this.tufahizoh);
         this.update.add(this.toryfi);
         this.tepamateh(this.model.lymaw());
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.exit.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.remove(this.lyb);
         this.view.relygevah.remove(this.tepamateh);
         this.view.wibulotavy.remove(this.tufahizoh);
         this.update.remove(this.toryfi);
         this.vegah.qyhynen();
         this.model.clear();
         return;
      }

      private function tepamateh(param1:Timespan) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model.nufoki(param1);
         if(this.model.luvigu())
         {
            this.toryfi();
         }
         else
         {
            this.memer();
         }
         return;
      }

      private function memer() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.clear();
         this.view.rekewok();
         this.roby.dispatch(this.model.lymaw());
         return;
      }

      private function toryfi(param1:Timespan=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var param1:Timespan = (param1)||(this.model.lymaw());
         this.view.wijygut();
         this.view.hyru(param1,this.model.haca());
         return;
      }

      private function tufahizoh(param1:Topunu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sajoqyl.dispatch(param1);
         return;
      }
   }

}