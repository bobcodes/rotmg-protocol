package zec
{
[CLASS299]   import cejyva.Qopatir;
   import tinava.Dab;
   import fyvanod.Kywyb;
   import fyvanod.Pyni;
   import pudev.Capitu;
   import fyvanod.PetFuser;
   import fyvanod.Jasuhoco;
   import fyvanod.FusionStrength;
   import qypupet.Sikyvuvus;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import kozaligov.Cyj;
   import qypupet.Gucuqop;
   import kozaligov.Cinijyt;
   import tidi.Dak;
   import kozaligov.Bapipe;


   public class Qyniv extends Tug implements Qopatir
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qyniv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.ziluf.zokokof.addOnce(this.selo);
         return;
      }

      private static const cunaraf:Dab = new Dab();

      public const ziluf:Kywyb = Bapipe.daq(Kefyfa.celupysa,Cinijyt.kile-39);

      private const background:Pyni = Bapipe.canosyboz();

      private const wodigupu:Capitu = Bapipe.nopu(11776947,18,true);

      private const tywehuwuq:Capitu = Bapipe.midar();

      private const konuj:PetFuser = Bapipe.hoquwe();

      private const giqezi:Jasuhoco = Bapipe.dupypy(Cinijyt.lihunohoc);

      private const zehul:FusionStrength = Bapipe.carawup();

      public const closed:Dab = new Dab();

      public var zate:Dab;

      public var qosenic:Dab;

      public var buniwyr:Dab;

      public function init(param1:Sikyvuvus) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wodigupu.setStringBuilder(new Zufi().setParams(Kefyfa.setygewiq));
         this.zate=this.konuj.zate;
         this.qosenic=this.ziluf.rij;
         this.buniwyr=this.ziluf.bulipy;
         this.ziluf.pyjeluke(!param1.kizu());
         this.ziluf.setPrefix(param1.kizu()?Kefyfa.celupysa:Kefyfa.qedy);
         if(param1.kizu())
         {
            this.ziluf.sev(Cyj.jidad(Gucuqop.gak(param1.jaq.nyv())));
            this.ziluf.rinocuf(Cyj.wiqa(Gucuqop.gak(param1.jaq.nyv())));
         }
         this.giqezi.zokokof.add(this.pikymasa);
         this.tozibyt();
         this.mipuguc();
         this.sym();
         return;
      }

      private function selo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         cunaraf.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ziluf.wihihula.remove(this.rahuzifok);
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.wodigupu);
         addChild(this.tywehuwuq);
         addChild(this.ziluf);
         addChild(this.konuj);
         addChild(this.zehul);
         addChild(this.giqezi);
         return;
      }

      private function sym() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         wavyfy();
         this.wamy();
         return;
      }

      private function wamy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.konuj.x=Math.round((Cinijyt.lihunohoc-this.konuj.width)*0.5);
         return;
      }

      private function tozibyt() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dak = new Dak();
         _loc1_.push(this.wodigupu.textChanged);
         _loc1_.push(this.tywehuwuq.textChanged);
         _loc1_.complete.addOnce(this.fiqapek);
         this.ziluf.wihihula.add(this.rahuzifok);
         return;
      }

      private function fiqapek() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wodigupu.y=5;
         this.wodigupu.x=(Cinijyt.lihunohoc-this.wodigupu.width)*0.5;
         this.tywehuwuq.x=(Cinijyt.lihunohoc-this.tywehuwuq.width)*0.5;
         return;
      }

      private function rahuzifok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ziluf.x=(Cinijyt.lihunohoc-this.ziluf.width)/2;
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closed.dispatch();
         return;
      }

      public function gif() : Dab {
         return cunaraf;
      }
   }
[/CLASS]
}