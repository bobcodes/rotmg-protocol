package tosugire
{
   import hunavefeg.Vupyga;
   import flash.display.DisplayObjectContainer;
   import dyca.Mes;
   import teticurym.Sewopacyn;
   import vyso.Sehorof;
   import hunavefeg.Hyne;
   import flash.display.LoaderInfo;
   import hunavefeg.Depyrew;
   import pomujukir.Doli;
   import civino.Posobew;
   import vilova.Subumuriz;
   import vilova.Cetugev;
   import kylelimib.Zazasinip;
   import sefylew.MoneyFrame;
   import zekeqa.Woqab;
   import pusy.Hifu;
   import pugem.Fufo;
   import tyvij.Duwinukyl;
   import civino.Rupizil;
   import pury.Vowip;
   import civino.Facowy;
   import pury.Qici;
   import byredo.Musyfolez;
   import tam.Bal;
   import myh.Zusuwasa;
   import risic.Vydug;


   public class Nulehe extends Object implements Vupyga
   {
      public function Nulehe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var root:DisplayObjectContainer;

      public var difas:Mes;

      public var pomih:Sewopacyn;

      public var mediatorMap:Sehorof;

      public var context:Hyne;

      public var info:LoaderInfo;

      public var con:Depyrew;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.seled();
         this.baby();
         this.context.wumeci.pypygug(this.init);
         return;
      }

      private function seled() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Doli).fezy();
         this.difas.map(Posobew).fezy();
         this.difas.map(Subumuriz);
         this.difas.map(Cetugev);
         this.difas.map(Zazasinip).fezy();
         this.mediatorMap.map(MoneyFrame).lokiduf(Woqab);
         this.pomih.map(Hifu).sakytyf(Fufo).tasa(Duwinukyl);
         this.pomih.map(Rupizil).sakytyf(Vowip);
         this.pomih.map(Facowy).sakytyf(Qici);
         return;
      }

      private function baby() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.heludu())
         {
            this.context.configure(Musyfolez);
         }
         else
         {
            if(this.qucasuw())
            {
               this.context.configure(Bal);
            }
            else
            {
               if(this.fizesize())
               {
                  this.context.configure(Zusuwasa);
               }
               else
               {
                  this.context.configure(Vydug);
               }
            }
         }
         return;
      }

      private function heludu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.info.parameters.kongregate_api_path==null);
      }

      private function qucasuw() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.info.parameters.steam_api_path==null);
      }

      private function fizesize() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.info.parameters.kabam_signed_request==null);
      }

      private function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.con.info("isKongregate {0}",[this.heludu()]);
         this.con.info("isSteam {0}",[this.qucasuw()]);
         this.con.info("isKabam {0}",[this.fizesize()]);
         return;
      }
   }

}