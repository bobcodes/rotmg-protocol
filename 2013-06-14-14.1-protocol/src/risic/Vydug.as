package risic
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import vyso.Sehorof;
   import teticurym.Sewopacyn;
   import pugem.Account;
   import kylelimib.Cygusupu;
   import cinyj.Sodeza;
   import civino.Wyvudasev;
   import sanu.Kizirali;
   import civino.Gypate;
   import sanu.Woduqybyh;
   import civino.Kidy;
   import sanu.Gidel;
   import mokaq.Kybajuk;
   import sanu.Wyhosece;
   import civino.Pajenosok;
   import sanu.Rupyvi;
   import civino.Pycezur;
   import sanu.Jurupiqyd;
   import civino.Povaseh;
   import sanu.Baqewy;
   import gabufo.Tydagid;
   import gabufo.Vid;
   import gabufo.WebChangePasswordDialog;
   import gabufo.Rizusoko;
   import gabufo.WebForgotPasswordDialog;
   import gabufo.Zosiniz;
   import gabufo.WebAccountDetailDialog;
   import gabufo.Tukog;
   import gabufo.Meqeguru;
   import gabufo.Noly;
   import gabufo.WebLoginDialog;
   import gabufo.Gyzolo;
   import vilova.Cypoj;
   import cybehajij.Tane;
   import vilova.Sekevizi;
   import cybehajij.Per;
   import vilova.Baf;
   import cybehajij.Pujaw;
   import vilova.Hofuz;
   import cybehajij.Sevaq;
   import vilova.Boqadaq;
   import cybehajij.Ramad;
   import vilova.Piwyc;
   import cybehajij.Sab;
   import vilova.Wyt;
   import cybehajij.Duny;
   import vilova.Sase;
   import cybehajij.Latuqodu;


   public class Vydug extends Object implements Vupyga
   {
      public function Vydug() {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
         this.filu();
         return;
      }

      protected function fisokami() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Account).wila(Jyr);
         this.difas.map(Cygusupu).wila(Sodeza);
         return;
      }

      protected function basoqaca() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pomih.map(Wyvudasev).sakytyf(Kizirali);
         this.pomih.map(Gypate).sakytyf(Woduqybyh);
         this.pomih.map(Kidy).sakytyf(Gidel);
         this.pomih.map(Kybajuk).sakytyf(Wyhosece);
         this.pomih.map(Pajenosok).sakytyf(Rupyvi);
         this.pomih.map(Pycezur).sakytyf(Jurupiqyd);
         this.pomih.map(Povaseh).sakytyf(Baqewy);
         return;
      }

      protected function sitita() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(Tydagid).lokiduf(Vid);
         this.mediatorMap.map(WebChangePasswordDialog).lokiduf(Rizusoko);
         this.mediatorMap.map(WebForgotPasswordDialog).lokiduf(Zosiniz);
         this.mediatorMap.map(WebAccountDetailDialog).lokiduf(Tukog);
         this.mediatorMap.map(Meqeguru).lokiduf(Noly);
         this.mediatorMap.map(WebLoginDialog).lokiduf(Gyzolo);
         return;
      }

      protected function filu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Cypoj).qyfi(Tane);
         this.difas.map(Sekevizi).qyfi(Per);
         this.difas.map(Baf).qyfi(Pujaw);
         this.difas.map(Hofuz).qyfi(Sevaq);
         this.difas.map(Boqadaq).qyfi(Ramad);
         this.difas.map(Piwyc).qyfi(Sab);
         this.difas.map(Wyt).qyfi(Duny);
         this.difas.map(Sase).qyfi(Latuqodu);
         return;
      }
   }

}