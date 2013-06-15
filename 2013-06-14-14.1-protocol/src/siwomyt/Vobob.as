package siwomyt
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import zevyd.Kujyketyh;
   import teticurym.Sewopacyn;
   import zevyd.Wufoduj;
   import jovurora.Divoceve;
   import vurazo.Jukumumy;
   import vurazo.Lerud;
   import vurazo.Wema;
   import civino.Povaseh;
   import ralulyte.Vus;


   public class Vobob extends Object implements Vupyga
   {
      public function Vobob() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var difas:Mes;

      public var data:Kujyketyh;

      public var pomih:Sewopacyn;

      public function configure() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Wufoduj = this.data.jozeguk();
         switch(null)
         {
            case Wufoduj.wowysery:
               this.hevujur();
               break;
            case Wufoduj.bac:
            case Wufoduj.kapez:
               this.roqaleman();
               break;
            default:
               this.qydebutu();
         }
         return;
      }

      private function roqaleman() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Divoceve).wila(Jukumumy);
         return;
      }

      private function hevujur() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Divoceve).pylo(this.zig());
         return;
      }

      private function zig() : Lerud {
         return new Lerud().setIP(this.data.hacohylat());
      }

      private function qydebutu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Divoceve).wila(Wema);
         this.pomih.map(Povaseh).sakytyf(Vus);
         return;
      }
   }

}