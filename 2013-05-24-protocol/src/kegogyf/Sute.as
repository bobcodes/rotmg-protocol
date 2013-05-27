package kegogyf
{
[CLASS4]   import komawowag.Silikyta;
   import flash.display.DisplayObjectContainer;
   import kyco.Nun;
   import lagizizoq.Mys;
   import bidav.Duwuweb;
   import komawowag.Net;
   import flash.display.LoaderInfo;
   import komawowag.Becepog;
   import raqu.Zer;
   import jiha.Jopu;
   import dopumitud.Gefohi;
   import dopumitud.Wib;
   import nasokuqa.Lotop;
   import kat.MoneyFrame;
   import gib.Ludama;
   import sasacen.Tipesok;
   import ruwa.Betys;
   import fydoni.Wanokevaj;
   import jiha.Rupe;
   import peciryf.Pijuso;
   import jiha.Gyveny;
   import peciryf.Hog;
   import dijojygeg.Juzig;
   import cyt.Ketome;
   import ninu.Gilo;
   import ric.Qen;


   public class Sute extends Object implements Silikyta
   {
      public function Sute() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var root:DisplayObjectContainer;

      public var cemohoqal:Nun;

      public var davyl:Mys;

      public var mediatorMap:Duwuweb;

      public var context:Net;

      public var info:LoaderInfo;

      public var qiqely:Becepog;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lywymibyz();
         this.byrerum();
         this.context.fyf.rewyji(this.init);
         return;
      }

      private function lywymibyz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Zer).pybe();
         this.cemohoqal.map(Jopu).pybe();
         this.cemohoqal.map(Gefohi);
         this.cemohoqal.map(Wib);
         this.cemohoqal.map(Lotop).pybe();
         this.mediatorMap.map(MoneyFrame).zusu(Ludama);
         this.davyl.map(Tipesok).bez(Betys).mitum(Wanokevaj);
         this.davyl.map(Rupe).bez(Pijuso);
         this.davyl.map(Gyveny).bez(Hog);
         return;
      }

      private function byrerum() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.riqajes())
         {
            this.context.configure(Juzig);
         }
         else
         {
            if(this.fukidysi())
            {
               this.context.configure(Ketome);
            }
            else
            {
               if(this.wigeqewy())
               {
                  this.context.configure(Gilo);
               }
               else
               {
                  this.context.configure(Qen);
               }
            }
         }
         return;
      }

      private function riqajes() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.info.parameters.kongregate_api_path==null);
      }

      private function fukidysi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.info.parameters.steam_api_path==null);
      }

      private function wigeqewy() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.info.parameters.kabam_signed_request==null);
      }

      private function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.info("isKongregate {0}",[this.riqajes()]);
         this.qiqely.info("isSteam {0}",[this.fukidysi()]);
         this.qiqely.info("isKabam {0}",[this.wigeqewy()]);
         return;
      }
   }

}