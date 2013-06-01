package tidi
{
[CLASS402]   import tysenyzy.Zovisis;
   import dylaqezo.Vusun;
   import dutes.Sycanetal;
   import dutes.Vow;
   import nylos.Buguk;
   import rysuho.Kitypagur;
   import kirofyny.Hehuf;
   import natus.Hewoda;
   import wyzoz.Fasud;
   import gylijupa.Cewimeso;
   import vinirudel.Wicide;
   import flash.system.Capabilities;
   import qilarag.Wyqahi;
   import caqu.Jujadi;
   import dec.Tani;
   import flash.events.Event;


   public class Fok extends Zovisis
   {
      public function Fok() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:TitleView;

      public var jojun:Vusun;

      public var cucec:Sycanetal;

      public var wukulomik:Vow;

      public var worykurac:Buguk;

      public var jipoquv:Kitypagur;

      public var lyhog:Hehuf;

      public var setup:Hewoda;

      public var myticuleg:Fasud;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.byhup.add(this.rojavo);
         this.view.initialize(this.zoguty());
         this.view.rulejisew.add(this.mosojiw);
         this.view.zedamilib.add(this.nadu);
         this.view.dedizyru.add(this.tusene);
         this.view.gupicego.add(this.hofiqoquf);
         this.view.dysec.add(this.ronojutac);
         this.view.gym(this.setup.sabafu());
         return;
      }

      private function rojavo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return;
      }

      private function ronojutac() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cucec.dispatch(new Cewimeso());
         return;
      }

      private function zoguty() : Wicide {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Wicide = new Wicide();
         _loc1_.tifo=Capabilities.playerType=="Desktop";
         _loc1_.cevewaza=this.jojun.cevewaza();
         _loc1_.bazov=this.setup.cakavuz();
         return _loc1_;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.rulejisew.remove(this.mosojiw);
         this.view.zedamilib.remove(this.nadu);
         this.view.dedizyru.remove(this.tusene);
         this.view.gupicego.remove(this.hofiqoquf);
         this.view.byhup.remove(this.rojavo);
         return;
      }

      private function mosojiw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.worykurac.dispatch();
         return;
      }

      private function nadu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cucec.dispatch(new Wyqahi());
         return;
      }

      private function tusene() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jipoquv.dispatch(false);
         return;
      }

      private function hofiqoquf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cucec.dispatch(new Jujadi());
         return;
      }

      private function qub() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cucec.dispatch(new Tani());
         return;
      }

      private function jifi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         dispatch(new Event("APP_CLOSE_EVENT"));
         return;
      }
   }
[/CLASS]
}