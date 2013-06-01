package sebehesa
{
   import qov.Kalefu;
   import sibaworop.Pamokut;
   import zelinoryv.Vib;
   import vevurar.Kikewu;
   import hapefapu.Vuwatuwyv;
   import hapefapu.Noruz;
   import hapefapu.Limo;
   import raqu.Fesezosit;
   import sibaworop.Timespan;
   import sibaworop.Seqyw;


   public class Cimyz extends Kalefu
   {
      public function Cimyz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Komukuho;

      public var model:Pamokut;

      public var puni:Vib;

      public var dokule:Kikewu;

      public var tuz:Vuwatuwyv;

      public var update:Noruz;

      public var exit:Limo;

      public var tyc:Fesezosit;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tyc.dispatch("/legendsScreen");
         this.view.close.add(this.onClose);
         this.view.cunutap.add(this.lulab);
         this.view.kybol.add(this.divijud);
         this.update.add(this.mawymu);
         this.lulab(this.model.jusihuz());
         return;
      }

      private function onClose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.exit.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.remove(this.onClose);
         this.view.cunutap.remove(this.lulab);
         this.view.kybol.remove(this.divijud);
         this.update.remove(this.mawymu);
         this.puni.zedos();
         this.model.clear();
         return;
      }

      private function lulab(param1:Timespan) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.model.hyqolo(param1);
         if(this.model.hogeweku())
         {
            this.mawymu();
         }
         else
         {
            this.myba();
         }
         return;
      }

      private function myba() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.clear();
         this.view.welyzyg();
         this.tuz.dispatch(this.model.jusihuz());
         return;
      }

      private function mawymu(param1:Timespan=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var param1:Timespan = (param1)||(this.model.jusihuz());
         this.view.kozig();
         this.view.cukivomy(param1,this.model.riwihak());
         return;
      }

      private function divijud(param1:Seqyw) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dokule.dispatch(param1);
         return;
      }
   }

}