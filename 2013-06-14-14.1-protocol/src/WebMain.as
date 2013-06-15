package 
{
   import flash.display.Sprite;
   import hunavefeg.Hyne;
   import flash.events.Event;
   import com.company.assembleegameclient.util.Wopacycu;
   import flash.display.StageScaleMode;
   import voledi.Wiho;
   import com.company.assembleegameclient.parameters.Parameters;
   import sijizoh.Duq;
   import flash.display.LoaderInfo;
   import com.company.assembleegameclient.util.Cokinomu;
   import tytojonib.Cihuwuj;
   import qini.Jidiva;
   import holab.Kege;
   import hotu.Ryr;
   import dopacuhemo.Hogivefu;
   import kabam.rotmg.assets.Toposyba;
   import joterar.Zypokikim;
   import sykilu.Gejizohi;
   import sykilu.Wopybaw;
   import fuheqid.Vuduroked;
   import ryqaku.Zilof;
   import zefyq.Holila;
   import tosugire.Nulehe;
   import dekovokes.Syryvevav;
   import sijizoh.Nygolocih;
   import sykilu.Dasejy;
   import dymul.Nonur;
   import qafyl.Zipila;
   import siwomyt.Vobob;
   import dural.Fakafad;
   import zutudytod.Pemowule;
   import jytis.Vugegy;
   import sujuvipit.Fojabocos;
   import sirosyse.Kuhiherow;
   import cazyja.Fefyjute;
   import gafuvy.Sogosinu;
   import gamupy.Sokicij;
   import qumezigy.Guryjecy;
   import kycymily.Kydesi;
   import fatec.Lyvup;
   import tigoca.Jumuvivaj;
   import cimyv.Rihujo;
   import kycadu.Jycopypir;
   import hunavefeg.Tilac;
   import flash.system.Capabilities;


   public class WebMain extends Sprite
   {
      public function WebMain() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         if(stage)
         {
            this.setup();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         return;
      }

      protected var context:Hyne;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.setup();
         return;
      }

      private function setup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hyhotoci();
         this.jymudopu();
         new Wopacycu().load();
         stage.scaleMode=StageScaleMode.EXACT_FIT;
         this.context.difas.getInstance(Wiho).dispatch();
         this.tyzapi();
         return;
      }

      private function hyhotoci() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Parameters.root=stage.root;
         return;
      }

      private function jymudopu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.context=new Duq();
         this.context.difas.map(LoaderInfo).pylo(root.stage.root.loaderInfo);
         var _loc1_:Cokinomu = new Cokinomu(this);
         this.context.difas.map(Cokinomu).pylo(_loc1_);
         this.context.extend(Cihuwuj).extend(Jidiva).configure(Kege).configure(Ryr).configure(Hogivefu).configure(Toposyba).configure(Zypokikim).configure(Gejizohi).configure(Wopybaw).configure(Vuduroked).configure(Zilof).configure(Holila).configure(Nulehe).configure(Syryvevav).configure(Nygolocih).configure(Dasejy).configure(Nonur).configure(Zipila).configure(Vobob).configure(Fakafad).configure(Pemowule).configure(Vugegy).configure(Fojabocos).configure(Kuhiherow).configure(Fefyjute).configure(Sogosinu).configure(Sokicij).configure(Guryjecy).configure(Kydesi).configure(Lyvup).configure(Jumuvivaj).configure(Rihujo).configure(Jycopypir).configure(this);
         this.context.cimopob=Tilac.DEBUG;
         return;
      }

      private function tyzapi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(Capabilities.playerType=="Desktop")
         {
            Parameters.data_.fullscreenMode=false;
            Parameters.save();
         }
         return;
      }
   }

}