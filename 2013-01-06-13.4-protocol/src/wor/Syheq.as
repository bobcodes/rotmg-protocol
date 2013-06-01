package wor
{
[CLASS9]   import bikyvym.Tihoc;
   import pogefeqeh.Wahovy;
   import minobyb.Vol;
   import zajenevik.Tif;
   import minobyb.Pycilylu;
   import wyjimigo.Tykum;
   import curywoc.Dabadaza;
   import curywoc.Wahele;
   import curywoc.Dasujyte;
   import rysuho.Gyry;
   import byky.Wifyzaw;


   public class Syheq extends Object implements Tihoc
   {
      public function Syheq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var viqelo:Wahovy;

      public var data:Vol;

      public var pyv:Tif;

      public function configure() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Pycilylu = this.data.surusul();
         switch(null)
         {
            case Pycilylu.zyzap:
               this.gafacov();
               break;
            case Pycilylu.hyt:
            case Pycilylu.jiqapo:
               this.jygypi();
               break;
            default:
               this.gebeduniw();
         }
         return;
      }

      private function jygypi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqelo.map(Tykum).dib(Dabadaza);
         return;
      }

      private function gafacov() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqelo.map(Tykum).zoru(this.pykid());
         return;
      }

      private function pykid() : Wahele {
         return new Wahele().setIP(this.data.lenurakid());
      }

      private function gebeduniw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqelo.map(Tykum).dib(Dasujyte);
         this.pyv.map(Gyry).paradi(Wifyzaw);
         return;
      }
   }
[/CLASS]
}