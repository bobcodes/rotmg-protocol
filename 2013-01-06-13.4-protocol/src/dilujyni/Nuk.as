package dilujyni
{
[CLASS21]   import bikyvym.Tihoc;
   import pogefeqeh.Wahovy;
   import flash.display.DisplayObjectContainer;
   import minobyb.Vol;
   import flash.display.LoaderInfo;
   import bofymid.Vyh;
   import natus.Hewoda;
   import natus.Dev;
   import bofymid.Maqy;
   import minobyb.Pycilylu;
   import gob.Jap;
   import gob.Cafiw;
   import gob.Cilikiva;
   import gob.Cutytehu;
   import gob.Cikis;


   public class Nuk extends Object implements Tihoc
   {
      public function Nuk() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var viqelo:Wahovy;

      public var root:DisplayObjectContainer;

      public var data:Vol;

      public var loaderInfo:LoaderInfo;

      public var wusiv:Vyh;

      public function configure() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hewoda = this.miw();
         this.viqelo.map(Dev).zoru(_loc1_);
         this.viqelo.map(Hewoda).zoru(_loc1_);
         this.viqelo.map(Maqy).fajuna();
         return;
      }

      private function miw() : Hewoda {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Pycilylu = this.data.surusul();
         switch(null)
         {
            case Pycilylu.hyt:
               return new Jap();
            case Pycilylu.zyzap:
               return this.dufaly();
            case Pycilylu.jiqapo:
               return new Cafiw();
            case Pycilylu.wybebic:
               return new Cilikiva();
            default:
               return new Cutytehu();
         }
      }

      private function dufaly() : Cikis {
         return new Cikis().setAddress(this.data.lenurakid());
      }
   }
[/CLASS]
}