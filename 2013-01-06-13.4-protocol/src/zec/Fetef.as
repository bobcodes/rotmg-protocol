package zec
{
[CLASS268]   import flash.display.Sprite;
   import fyvanod.Pyni;
   import pudev.Capitu;
   import fyvanod.Fimyr;
   import tinava.Dab;
   import fyvanod.Jasuhoco;
   import totuhare.Zufi;
   import tidi.Dak;
   import kozaligov.Cinijyt;
   import kozaligov.Bapipe;
   import qypupet.Vuravipyg;


   public class Fetef extends Sprite
   {
      public function Fetef() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jik=new Dab(Vuravipyg);
         super();
         return;
      }

      private const background:Pyni = Bapipe.vamy(Cinijyt.lihunohoc,Cinijyt.buhyq);

      private const wodigupu:Capitu = Bapipe.kejajaqyv(16777215,18,true);

      private const ziluf:Fimyr = Bapipe.pimez();

      public var jik:Dab;

      private const giqezi:Jasuhoco = Bapipe.dupypy(Cinijyt.lihunohoc);

      public function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tozibyt();
         this.mipuguc();
         this.wodigupu.setStringBuilder(new Zufi().setParams("Available Pets"));
         this.ziluf.buttonOne.rike("SELECT PET");
         this.wavyfy();
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.background);
         addChild(this.wodigupu);
         addChild(this.ziluf);
         addChild(this.giqezi);
         return;
      }

      private function wavyfy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.x=(stage.width-this.width)/2;
         this.y=(stage.height-this.height)/2;
         return;
      }

      private function tozibyt() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dak = new Dak();
         _loc1_.push(this.wodigupu.textChanged);
         _loc1_.complete.addOnce(this.fiqapek);
         return;
      }

      private function fiqapek() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wodigupu.x=(Cinijyt.lihunohoc-this.wodigupu.width)/2;
         return;
      }
   }
[/CLASS]
}