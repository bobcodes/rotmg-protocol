package kycadu
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import vyso.Sehorof;
   import teticurym.Sewopacyn;
   import qypajun.Gahufuz;
   import zipo.Vih;
   import zipo.Gagininaj;
   import wohy.Segeqofi;
   import wohy.Luz;
   import ginuly.Suvydod;
   import wohy.Gebusecyz;
   import ginuly.Rod;
   import ginuly.Gykuvaca;
   import ginuly.Sywuvuzug;
   import ginuly.Guheb;
   import dicyl.Sed;
   import ginuly.Micasuhy;
   import pejycaj.ContinueOrQuitDialog;
   import pejycaj.Bygonep;
   import pejycaj.Mudosorug;
   import pejycaj.Ryso;
   import pejycaj.ArenaQueryPanel;
   import pejycaj.Mizywumy;
   import pejycaj.ArenaLeaderboard;
   import pejycaj.Ryzibajik;
   import pejycaj.ArenaLeaderboardListItem;
   import pejycaj.Fefomen;
   import pejycaj.ArenaLeaderboardButton;
   import pejycaj.PhysicalObjectDatafidas;
   import pejycaj.Jajomara;
   import pejycaj.Fabipy;
   import pejycaj.Sihetyta;
   import pejycaj.Taja;
   import pejycaj.BattleSummaryDialog;
   import pejycaj.Sozapezy;
   import pejycaj.Catykonu;
   import pejycaj.Tako;


   public class Jycopypir extends Object implements Vupyga
   {
      public function Jycopypir() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public var pomih:Sewopacyn;

      public var commandCenter:Gahufuz;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Vih);
         this.difas.map(Gagininaj);
         this.difas.map(Segeqofi).fezy();
         this.difas.map(Luz).fezy();
         this.difas.map(Suvydod).fezy();
         this.difas.map(Gebusecyz).fezy();
         this.pomih.map(Rod).sakytyf(Gykuvaca);
         this.pomih.map(Sywuvuzug).sakytyf(Guheb);
         this.pomih.map(Sed).sakytyf(Micasuhy);
         this.mediatorMap.map(ContinueOrQuitDialog).lokiduf(Bygonep);
         this.mediatorMap.map(Mudosorug).lokiduf(Ryso);
         this.mediatorMap.map(ArenaQueryPanel).lokiduf(Mizywumy);
         this.mediatorMap.map(ArenaLeaderboard).lokiduf(Ryzibajik);
         this.mediatorMap.map(ArenaLeaderboardListItem).lokiduf(Fefomen);
         this.mediatorMap.map(ArenaLeaderboardButton).lokiduf(PhysicalObjectDatafidas);
         this.mediatorMap.map(Jajomara).lokiduf(Fabipy);
         this.mediatorMap.map(Sihetyta).lokiduf(Taja);
         this.mediatorMap.map(BattleSummaryDialog).lokiduf(Sozapezy);
         this.mediatorMap.map(Catykonu).lokiduf(Tako);
         return;
      }
   }

}