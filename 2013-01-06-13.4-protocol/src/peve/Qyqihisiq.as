package peve
{
[CLASS6]   import bikyvym.Tihoc;
   import bikyvym.Cedymynet;
   import pogefeqeh.Wahovy;
   import wufyba.Cobyjowek;
   import zajenevik.Tif;
   import tehakab.Supuvygac;
   import fumyl.Beci;
   import zeky.Huwe;
   import zukaj.Woqoqe;
   import fumyl.CharacterSkinListItem;
   import fumyl.Bag;
   import fumyl.Kynabisi;
   import fumyl.Kyqiza;
   import fumyl.Segodi;
   import fumyl.Votana;
   import fumyl.ClassDetailView;
   import fumyl.Weholi;
   import rysuho.Waluwyl;
   import zeky.Hirame;
   import rysuho.Gyry;
   import zeky.Muheq;
   import zeky.Gedyd;
   import zeky.Johu;
   import dutes.Kisicy;
   import zeky.Bire;
   import zeky.Kukiqinez;
   import zeky.Podahohej;
   import tuhisyh.Dedykyj;
   import kabam.rotmg.assets.Pyt;


   public class Qyqihisiq extends Object implements Tihoc
   {
      public function Qyqihisiq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Cedymynet;

      public var viqelo:Wahovy;

      public var mediatorMap:Cobyjowek;

      public var pyv:Tif;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqelo.map(Supuvygac).fajuna();
         this.viqelo.map(Beci).fajuna();
         this.viqelo.map(Huwe).fajuna();
         this.viqelo.map(Woqoqe);
         this.mediatorMap.map(CharacterSkinListItem).sab(Bag);
         this.mediatorMap.map(Kynabisi).sab(Kyqiza);
         this.mediatorMap.map(Segodi).sab(Votana);
         this.mediatorMap.map(ClassDetailView).sab(Weholi);
         this.pyv.map(Waluwyl).paradi(Hirame);
         this.pyv.map(Gyry).paradi(Muheq);
         this.pyv.map(Gedyd).paradi(Johu);
         this.pyv.map(Kisicy).paradi(Bire);
         this.pyv.map(Kukiqinez).paradi(Podahohej).konalyhe(Dedykyj);
         this.context.sutu.kan(this.init);
         return;
      }

      private function init() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:XML = XML(new Pyt.PlayersCXML());
         var _loc2_:Gedyd = this.viqelo.getInstance(Gedyd);
         _loc2_.dispatch(_loc1_);
         return;
      }
   }
[/CLASS]
}