package lawuq
{
   import hunavefeg.Hyne;
   import dyca.Mes;
   import vyso.Sehorof;
   import teticurym.Sewopacyn;
   import kaw.Console;
   import ranu.Jiripusi;
   import ranu.Mefodu;
   import ranu.Pejo;
   import ranu.Bivu;
   import ranu.Lynuz;
   import tyqyt.Gumasu;
   import ranu.Rycejoqom;
   import tyqyt.Qybuso;
   import ranu.Qatep;
   import tyqyt.Gijimena;
   import ranu.Fubyf;
   import ranu.Tihun;
   import ranu.Hydogozeq;
   import ranu.Hapyvisow;
   import ranu.Fiwot;
   import fumala.Bapel;
   import fumala.Zepu;
   import fumala.Walemin;
   import fumala.Fifu;
   import fumala.Lagoge;
   import fumala.Seq;
   import fumala.Rurybumi;
   import higyva.Zolet;
   import tefabezo.Fipuji;


   public class Winit extends Object
   {
      public function Winit() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var context:Hyne;

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public var pomih:Sewopacyn;

      public function setup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fisokami();
         this.basoqaca();
         this.gusu();
         this.sitita();
         this.context.wumeci.pypygug(this.init);
         return;
      }

      private function fisokami() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Console).fezy();
         this.difas.map(Jiripusi).fezy();
         this.difas.map(Mefodu).fezy();
         this.difas.map(Pejo).fezy();
         this.difas.map(Bivu).fezy();
         return;
      }

      private function basoqaca() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pomih.map(Lynuz).sakytyf(Gumasu);
         this.pomih.map(Rycejoqom).sakytyf(Qybuso);
         this.pomih.map(Qatep).sakytyf(Gijimena);
         return;
      }

      private function gusu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Fubyf).fezy();
         this.difas.map(Tihun).fezy();
         this.difas.map(Hydogozeq).fezy();
         this.difas.map(Hapyvisow).fezy();
         this.difas.map(Fiwot).fezy();
         return;
      }

      private function sitita() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mediatorMap.map(Bapel).lokiduf(Zepu);
         this.mediatorMap.map(Walemin).lokiduf(Fifu);
         this.mediatorMap.map(Lagoge).lokiduf(Seq);
         this.mediatorMap.map(Lagoge).lokiduf(Rurybumi);
         return;
      }

      private function init() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.context.qoze(new Zolet(this.context));
         this.difas.getInstance(Qatep).dispatch();
         var _loc1_:Fipuji = this.context.difas.getInstance(Fipuji);
         _loc1_.console.addChild(new Lagoge());
         return;
      }
   }

}