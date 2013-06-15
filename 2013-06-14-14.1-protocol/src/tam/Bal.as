package tam
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import vyso.Sehorof;
   import teticurym.Sewopacyn;
   import pugem.Account;
   import kylelimib.Cygusupu;
   import duhidami.Dymok;
   import civino.Povaseh;
   import civino.Wyvudasev;
   import zire.Wyg;
   import civino.Koteqoquc;
   import zire.Ton;
   import civino.Jecoro;
   import zire.Lojirij;
   import refeced.SteamAccountDetailDialog;
   import refeced.Lohag;
   import sefylew.RegisterWebAccountDialog;
   import refeced.Tipi;
   import sefylew.LinkWebAccountDialog;
   import sefylew.Qelys;
   import padin.Lecoc;
   import vilova.Dofopilu;
   import padin.Bagob;
   import vilova.Sekevizi;
   import padin.Zipydovu;
   import padin.Gyfamafuf;
   import vilova.Hofuz;
   import padin.Qizaryqiq;
   import vilova.Boqadaq;
   import padin.Lomo;
   import vilova.Piwyc;
   import padin.Micanaku;


   public class Bal extends Object implements Vupyga
   {
      public function Bal() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public var pomih:Sewopacyn;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fisokami();
         this.basoqaca();
         this.sitita();
         this.sutusyvej();
         return;
      }

      protected function fisokami() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Account).wila(Syzev);
         this.difas.map(Cygusupu).wila(Dymok);
         this.difas.map(Povaseh).fezy();
         return;
      }

      protected function basoqaca() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pomih.map(Wyvudasev).sakytyf(Wyg);
         this.pomih.map(Koteqoquc).sakytyf(Ton);
         this.pomih.map(Jecoro).sakytyf(Lojirij);
         return;
      }

      protected function sitita() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(SteamAccountDetailDialog).lokiduf(Lohag);
         this.mediatorMap.map(RegisterWebAccountDialog).lokiduf(Tipi);
         this.mediatorMap.map(LinkWebAccountDialog).lokiduf(Qelys);
         return;
      }

      protected function sutusyvej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Sav).wila(Lecoc);
         this.difas.map(Dofopilu).qyfi(Bagob);
         this.difas.map(Sekevizi).qyfi(Zipydovu);
         this.difas.map(Gyfamafuf);
         this.difas.map(Hofuz).qyfi(Qizaryqiq);
         this.difas.map(Boqadaq).qyfi(Lomo);
         this.difas.map(Piwyc).qyfi(Micanaku);
         return;
      }
   }

}