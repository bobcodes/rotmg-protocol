package 
{
   import flash.display.Sprite;
   import komawowag.Net;
   import flash.events.Event;
   import com.company.assembleegameclient.util.Fahun;
   import flash.display.StageScaleMode;
   import kyku.Toho;
   import aaa.rotmg.config.UserConfig;
   import jag.Giq;
   import flash.display.LoaderInfo;
   import com.company.assembleegameclient.util.Votif;
   import qov.Rozysys;
   import gyloz.Pad;
   import lirawe.Tivim;
   import bozo.Zovyburi;
   import sugaca.Rufytawy;
   import kabam.rotmg.assets.Horewuba;
   import fihyryt.Paseqe;
   import wehagec.Diq;
   import wehagec.Zozica;
   import dokohi.Zyzybaf;
   import ludutaz.Bub;
   import tupodegap.Neqe;
   import kegogyf.Sute;
   import qetitat.Pezibibap;
   import jag.Rojuda;
   import wehagec.Kovaqisi;
   import maca.Sutot;
   import gydefatyv.Wih;
   import hifof.Kyfo;
   import vujybuz.Hosu;
   import jybazigiq.Jasas;
   import mapuw.Zysyj;
   import dawo.Cesu;
   import revomyre.Gyn;
   import tozini.Fahahuzu;
   import tekoh.Lewilegi;
   import matuhodyn.Kerazyc;
   import fyv.Hytidofa;
   import kagefo.Qac;
   import tulo.Wiqek;
   import gypydovy.Gyfiz;
   import kedohire.Sesiwo;
   import komawowag.Lagyqig;
   import flash.system.Capabilities;


   public class WebMain extends Sprite
   {
      public function WebMain() {
         var _loc1_:* = false;
         var _loc2_:* = true;
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

      protected var context:Net;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.setup();
         return;
      }

      private function setup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.motepivo();
         this.pufycati();
         new Fahun().load();
         stage.scaleMode=StageScaleMode.EXACT_FIT;
         this.context.cemohoqal.getInstance(Toho).dispatch();
         this.liwy();
         return;
      }

      private function motepivo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         UserConfig.root=stage.root;
         return;
      }

      private function pufycati() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.context=new Giq();
         this.context.cemohoqal.map(LoaderInfo).cufypy(root.stage.root.loaderInfo);
         var _loc1_:Votif = new Votif(this);
         this.context.cemohoqal.map(Votif).cufypy(_loc1_);
         this.context.extend(Rozysys).extend(Pad).configure(Tivim).configure(Zovyburi).configure(Rufytawy).configure(Horewuba).configure(Paseqe).configure(Diq).configure(Zozica).configure(Zyzybaf).configure(Bub).configure(Neqe).configure(Sute).configure(Pezibibap).configure(Rojuda).configure(Kovaqisi).configure(Sutot).configure(Wih).configure(Kyfo).configure(Hosu).configure(Jasas).configure(Zysyj).configure(Cesu).configure(Gyn).configure(Fahahuzu).configure(Lewilegi).configure(Kerazyc).configure(Hytidofa).configure(Qac).configure(Wiqek).configure(Gyfiz).configure(Sesiwo).configure(this);
         this.context.hite=Lagyqig.DEBUG;
         return;
      }

      private function liwy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(Capabilities.playerType=="Desktop")
         {
            UserConfig.data_.fullscreenMode=false;
            UserConfig.save();
         }
         return;
      }
   }

}