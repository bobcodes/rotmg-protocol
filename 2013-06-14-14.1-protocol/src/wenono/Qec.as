package wenono
{
   import tytojonib.Kyjefe;
   import lemugo.Wokycuku;
   import pomujukir.Bemivu;
   import pomujukir.Kovi;
   import pusy.Duperek;
   import civino.Wyvudasev;
   import cizagamym.Boquzojul;
   import daqun.Qobeta;
   import tefabezo.Fipuji;
   import ropowoh.Foto;
   import micac.Cahawi;
   import flash.system.Capabilities;
   import waryp.Derofo;
   import gudon.Rybapyj;
   import noniq.Cysekyrow;
   import flash.events.Event;


   public class Qec extends Kyjefe
   {
      public function Qec() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:TitleView;

      public var kejisacok:Wokycuku;

      public var syfu:Bemivu;

      public var hus:Kovi;

      public var vyhor:Duperek;

      public var zadenudo:Wyvudasev;

      public var ridecy:Boquzojul;

      public var setup:Qobeta;

      public var qukacefi:Fipuji;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.dolac.add(this.wagomykyp);
         this.view.initialize(this.gupu());
         this.view.ryhica.add(this.recyvit);
         this.view.pahekisa.add(this.ziqanesic);
         this.view.wokepade.add(this.mohapowu);
         this.view.tiz.add(this.fudod);
         this.view.zepujikid.add(this.pezefily);
         this.view.lemilefa(this.setup.kel());
         return;
      }

      private function wagomykyp() : void {
         var [OFS3]_loc1_:* = [/OFS]false;
         var [OFS4]_loc2_:* = [/OFS]true;
         [OFS63]return[/OFS];
      }

      private function pezefily() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.dispatch(new Foto());
         return;
      }

      private function gupu() : Cahawi {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cahawi = new Cahawi();
         _loc1_.gypypapis=Capabilities.playerType=="Desktop";
         _loc1_.mupububiq=this.kejisacok.mupububiq();
         _loc1_.kucoke=this.setup.vodupol();
         return _loc1_;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.ryhica.remove(this.recyvit);
         this.view.pahekisa.remove(this.ziqanesic);
         this.view.wokepade.remove(this.mohapowu);
         this.view.tiz.remove(this.fudod);
         this.view.dolac.remove(this.wagomykyp);
         return;
      }

      private function recyvit() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vyhor.dispatch();
         return;
      }

      private function ziqanesic() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.dispatch(new Derofo());
         return;
      }

      private function mohapowu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zadenudo.dispatch(false);
         return;
      }

      private function fudod() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.syfu.dispatch(new Rybapyj());
         return;
      }

      private function facot() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.dispatch(new Cysekyrow());
         return;
      }

      private function nuqim() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         dispatch(new Event("APP_CLOSE_EVENT"));
         return;
      }
   }

}