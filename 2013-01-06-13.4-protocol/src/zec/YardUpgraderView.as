package zec
{
[CLASS293]   import flash.display.Sprite;
   import fyvanod.Pyni;
   import pudev.Capitu;
   import fyvanod.Kywyb;
   import fyvanod.Jasuhoco;
   import flash.display.DisplayObject;
   import tinava.Dab;
   import qypupet.Nywimel;
   import totuhare.Zufi;
   import kozaligov.Cinijyt;
   import flash.text.TextFormatAlign;
   import tidi.Dak;
   import kozaligov.Bapipe;


   public class YardUpgraderView extends Sprite
   {
      public function YardUpgraderView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syqumagin=Fovilic;
         super();
         return;
      }

      private var syqumagin:Class;

      private const background:Pyni = Bapipe.dejyjoro(Cinijyt.lihunohoc,392);

      private const wodigupu:Capitu = Bapipe.kejajaqyv(16777215,18,true);

      private const himewa:Capitu = Bapipe.kejajaqyv(11776947,13,false);

      private const tequga:Capitu = Bapipe.kejajaqyv(16777103,16,true);

      private const ziluf:Kywyb = Bapipe.daq("YardUpgraderView.upgrade",357);

      private const giqezi:Jasuhoco = Bapipe.dupypy(Cinijyt.lihunohoc);

      private const ruti:DisplayObject = new this.syqumagin();

      private const viz:Quqaceryw = new Quqaceryw();

      public const closed:Dab = new Dab();

      public var buniwyr:Dab;

      public var qosenic:Dab;

      private var wakutehe:Nywimel;

      public function init(param1:Nywimel) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wakutehe=param1;
         this.giqezi.zokokof.add(this.zykekulucy);
         this.myfecy();
         this.div();
         this.tozibyt();
         this.mipuguc();
         this.sym();
         return;
      }

      private function myfecy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buniwyr=this.ziluf.bulipy;
         this.qosenic=this.ziluf.rij;
         this.ziluf.rinocuf(this.wakutehe.gefyma);
         this.ziluf.sev(this.wakutehe.bekif);
         return;
      }

      private function div() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wodigupu.setStringBuilder(new Zufi().setParams("YardUpgraderView.title"));
         this.tequga.setStringBuilder(new Zufi().setParams(this.hyhonypol(this.wakutehe.bicunabe)));
         this.himewa.setStringBuilder(new Zufi().setParams("YardUpgraderView.info"));
         this.himewa.setTextWidth(Cinijyt.lihunohoc-40).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER);
         this.viz.coludusij("YardUpgraderView.currentMax",this.hyhonypol(this.wakutehe.qom));
         return;
      }

      private function hyhonypol(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "{"+param1+"}";
      }

      private function zykekulucy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closed.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ziluf.wihihula.remove(this.rahuzifok);
         return;
      }

      public function myr(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ziluf.sev(param1);
         return;
      }

      public function qudita(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ziluf.rinocuf(param1);
         return;
      }

      private function rutu(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.giqezi.disabled=param1;
         this.ziluf.pyjeluke(param1);
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ruti.y=31;
         addChild(this.background);
         addChild(this.wodigupu);
         addChild(this.tequga);
         addChild(this.himewa);
         addChild(this.ziluf);
         addChild(this.giqezi);
         addChild(this.ruti);
         addChild(this.viz);
         return;
      }

      private function sym() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wavyfy();
         this.ruti.y=30;
         this.viz.x=11;
         this.viz.y=300;
         return;
      }

      private function wavyfy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.x=(stage.stageWidth-this.width)*0.5;
         this.y=(stage.stageHeight-this.height)*0.5;
         return;
      }

      private function tozibyt() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dak = new Dak();
         _loc1_.push(this.wodigupu.textChanged);
         _loc1_.push(this.himewa.textChanged);
         _loc1_.push(this.tequga.textChanged);
         _loc1_.complete.addOnce(this.fiqapek);
         this.ziluf.wihihula.add(this.rahuzifok);
         return;
      }

      private function fiqapek() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wodigupu.x=(Cinijyt.lihunohoc-this.wodigupu.width)*0.5;
         this.himewa.x=(Cinijyt.lihunohoc-this.himewa.width)*0.5;
         this.tequga.x=(Cinijyt.lihunohoc-this.tequga.width)*0.5;
         this.wodigupu.y=20;
         this.himewa.y=229;
         this.tequga.y=269;
         return;
      }

      private function rahuzifok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ziluf.x=(Cinijyt.lihunohoc-this.ziluf.width)/2;
         return;
      }
   }
[/CLASS]
}