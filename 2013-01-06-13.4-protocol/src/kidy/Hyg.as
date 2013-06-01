package kidy
{
[CLASS4]   import bikyvym.Tihoc;
   import flash.display.DisplayObjectContainer;
   import pogefeqeh.Wahovy;
   import zajenevik.Tif;
   import wufyba.Cobyjowek;
   import bikyvym.Cedymynet;
   import flash.display.LoaderInfo;
   import bikyvym.Voduzak;
   import dutes.Vyzynos;
   import rysuho.Zubusuge;
   import vofepimy.Wogy;
   import vofepimy.Wylot;
   import helepebas.Zedypina;
   import sojul.MoneyFrame;
   import nonyna.Vekiweted;
   import nylos.Ganujah;
   import leselo.Tem;
   import tuhisyh.Dedykyj;
   import rysuho.Kojumu;
   import jehihe.Qaqo;
   import rysuho.Lec;
   import jehihe.Hehufefot;
   import bumyj.Buciseb;
   import zib.Feco;
   import zeva.Vybeqohib;
   import gyjad.Wowahy;


   public class Hyg extends Object implements Tihoc
   {
      public function Hyg() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var root:DisplayObjectContainer;

      public var viqelo:Wahovy;

      public var pyv:Tif;

      public var mediatorMap:Cobyjowek;

      public var context:Cedymynet;

      public var info:LoaderInfo;

      public var wop:Voduzak;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hawe();
         this.gynu();
         this.context.sutu.kan(this.init);
         return;
      }

      private function hawe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqelo.map(Vyzynos).fajuna();
         this.viqelo.map(Zubusuge).fajuna();
         this.viqelo.map(Wogy);
         this.viqelo.map(Wylot);
         this.viqelo.map(Zedypina).fajuna();
         this.mediatorMap.map(MoneyFrame).sab(Vekiweted);
         this.pyv.map(Ganujah).paradi(Tem).konalyhe(Dedykyj);
         this.pyv.map(Kojumu).paradi(Qaqo);
         this.pyv.map(Lec).paradi(Hehufefot);
         return;
      }

      private function gynu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.duh())
         {
            this.context.configure(Buciseb);
         }
         else
         {
            if(this.volulyw())
            {
               this.context.configure(Feco);
            }
            else
            {
               if(this.sefynu())
               {
                  this.context.configure(Vybeqohib);
               }
               else
               {
                  this.context.configure(Wowahy);
               }
            }
         }
         return;
      }

      private function duh() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.info.parameters.kongregate_api_path==null);
      }

      private function volulyw() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.info.parameters.steam_api_path==null);
      }

      private function sefynu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.info.parameters.kabam_signed_request==null);
      }

      private function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wop.info("isKongregate {0}",[this.duh()]);
         this.wop.info("isSteam {0}",[this.volulyw()]);
         this.wop.info("isKabam {0}",[this.sefynu()]);
         return;
      }
   }
[/CLASS]
}