package fatec
{
   import hunavefeg.Vupyga;
   import hunavefeg.Hyne;
   import dyca.Mes;
   import vyso.Sehorof;
   import teticurym.Sewopacyn;
   import poho.Kyhy;
   import fysy.Rehijuh;
   import zycysoj.Zoju;
   import zufi.Syta;
   import fysy.CharacterSkinListItem;
   import fysy.Jegaqo;
   import fysy.Caj;
   import fysy.Laj;
   import fysy.Dovo;
   import fysy.Demy;
   import fysy.ClassDetailView;
   import fysy.Misuviha;
   import civino.Kidy;
   import zycysoj.Qakatiw;
   import civino.Povaseh;
   import zycysoj.Vom;
   import zycysoj.Juqetuty;
   import zycysoj.Fabu;
   import pomujukir.Suzoninib;
   import zycysoj.Mok;
   import zycysoj.Zeqo;
   import zycysoj.Cid;
   import tyvij.Duwinukyl;
   import kabam.rotmg.assets.Bulamelu;


   public class Lyvup extends Object implements Vupyga
   {
      public function Lyvup() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Hyne;

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public var pomih:Sewopacyn;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Kyhy).fezy();
         this.difas.map(Rehijuh).fezy();
         this.difas.map(Zoju).fezy();
         this.difas.map(Syta);
         this.mediatorMap.map(CharacterSkinListItem).lokiduf(Jegaqo);
         this.mediatorMap.map(Caj).lokiduf(Laj);
         this.mediatorMap.map(Dovo).lokiduf(Demy);
         this.mediatorMap.map(ClassDetailView).lokiduf(Misuviha);
         this.pomih.map(Kidy).sakytyf(Qakatiw);
         this.pomih.map(Povaseh).sakytyf(Vom);
         this.pomih.map(Juqetuty).sakytyf(Fabu);
         this.pomih.map(Suzoninib).sakytyf(Mok);
         this.pomih.map(Zeqo).sakytyf(Cid).tasa(Duwinukyl);
         this.context.wumeci.pypygug(this.init);
         return;
      }

      private function init() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:XML = XML(new Bulamelu.PlayersCXML());
         var _loc2_:Juqetuty = this.difas.getInstance(Juqetuty);
         _loc2_.dispatch(_loc1_);
         return;
      }
   }

}