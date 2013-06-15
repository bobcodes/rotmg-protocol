package ropowoh
{
   import tytojonib.Kyjefe;
   import tefabezo.Fipuji;
   import cycuka.Voli;
   import fik.Bokuqi;
   import pomujukir.Bemivu;
   import wenono.TitleView;


   public class Winy extends Kyjefe
   {
      public function Winy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var qukacefi:Fipuji;

      public var hyvitu:Voli;

      public var folocibe:Bokuqi;

      public var view:Foto;

      public var syfu:Bemivu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.vopuge(this.hyvitu.rih());
         this.view.setSelected(this.hyvitu.wapami(this.hyvitu.hohizo()));
         this.view.sitoze.add(this.bijika);
         this.view.back.add(this.gomeranem);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.sitoze.remove(this.bijika);
         this.view.back.remove(this.gomeranem);
         return;
      }

      private function gomeranem() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         this.[OFS7]syfu[/OFS].[OFS17]dispatch[/OFS][OFS17]([/OFS][OFS13]new [/OFS][OFS13]TitleView[/OFS][OFS13]([/OFS][OFS13])[/OFS][OFS17])[/OFS];
         [OFS20]return[/OFS];
      }

      private function bijika(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.folocibe.dispatch(this.hyvitu.ceqetiteq(param1));
         return;
      }
   }

}