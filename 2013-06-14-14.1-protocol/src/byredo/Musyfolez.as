package byredo
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import vyso.Sehorof;
   import teticurym.Sewopacyn;
   import pugem.Account;
   import wuwulyni.Wyzazeqi;
   import kylelimib.Cygusupu;
   import toga.Bijyb;
   import civino.Povaseh;
   import civino.Wyvudasev;
   import zin.Han;
   import civino.Koteqoquc;
   import zin.Sin;
   import civino.Jecoro;
   import zin.Tyb;
   import sygoquja.Loty;
   import zin.Qidyhugi;
   import sygoquja.Gosupawo;
   import zin.Jyranod;
   import taruco.KongregateAccountInfoView;
   import taruco.Tyl;
   import taruco.KongregateAccountDetailDialog;
   import taruco.Cifi;
   import sefylew.RegisterWebAccountDialog;
   import taruco.Qifa;
   import sefylew.LinkWebAccountDialog;
   import sefylew.Qelys;
   import taruco.Hosoqoqy;
   import taruco.Kobydo;
   import vilova.Dofopilu;
   import wuwulyni.Vawij;
   import vilova.Sekevizi;
   import wuwulyni.Fege;
   import wuwulyni.Kizedi;
   import vilova.Baf;
   import wuwulyni.Rawyq;
   import vilova.Sukazys;
   import wuwulyni.Dofefilij;
   import vilova.Hofuz;
   import wuwulyni.Semozuby;
   import vilova.Boqadaq;
   import wuwulyni.Lyc;
   import vilova.Piwyc;
   import wuwulyni.Qahaz;


   public class Musyfolez extends Object implements Vupyga
   {
      public function Musyfolez() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public var pomih:Sewopacyn;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fisokami();
         this.basoqaca();
         this.sutusyvej();
         this.sitita();
         return;
      }

      protected function fisokami() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Account).wila(Monewys);
         this.difas.map(Wyzazeqi).fezy();
         this.difas.map(Cygusupu).wila(Bijyb);
         this.difas.map(Povaseh).fezy();
         return;
      }

      protected function basoqaca() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pomih.map(Wyvudasev).sakytyf(Han);
         this.pomih.map(Koteqoquc).sakytyf(Sin);
         this.pomih.map(Jecoro).sakytyf(Tyb);
         this.pomih.map(Loty).sakytyf(Qidyhugi);
         this.pomih.map(Gosupawo).sakytyf(Jyranod);
         return;
      }

      protected function sitita() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(KongregateAccountInfoView).lokiduf(Tyl);
         this.mediatorMap.map(KongregateAccountDetailDialog).lokiduf(Cifi);
         this.mediatorMap.map(RegisterWebAccountDialog).lokiduf(Qifa);
         this.mediatorMap.map(LinkWebAccountDialog).lokiduf(Qelys);
         return;
      }

      protected function sutusyvej() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Hosoqoqy).wila(Kobydo);
         this.difas.map(Dofopilu).qyfi(Vawij);
         this.difas.map(Sekevizi).qyfi(Fege);
         this.difas.map(Kizedi);
         this.difas.map(Baf).qyfi(Rawyq);
         this.difas.map(Sukazys).qyfi(Dofefilij);
         this.difas.map(Hofuz).qyfi(Semozuby);
         this.difas.map(Boqadaq).qyfi(Lyc);
         this.difas.map(Piwyc).qyfi(Qahaz);
         return;
      }
   }

}