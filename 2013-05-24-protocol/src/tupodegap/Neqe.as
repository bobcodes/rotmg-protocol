package tupodegap
{
[CLASS8]   import komawowag.Silikyta;
   import komawowag.Net;
   import cucowury.Vylasy;
   import kyco.Nun;
   import negirilu.Zufafymy;
   import dopifo.Myg;
   import dopifo.AppEngineRequestStats;
   import dopifo.Rujahin;
   import negirilu.Fuzi;
   import dopifo.Zyto;
   import dopifo.Paqe;


   public class Neqe extends Object implements Silikyta
   {
      public function Neqe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const migysom:Boolean = true;

      public var context:Net;

      public var setup:Vylasy;

      public var cemohoqal:Nun;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kugadaly();
         if(this.setup.biqadepo())
         {
            this.dawy();
         }
         else
         {
            if(this.migysom)
            {
               this.wepo();
            }
            else
            {
               this.gonedyvus();
            }
         }
         return;
      }

      private function kugadaly() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Zufafymy).jotovaq(Myg);
         return;
      }

      private function dawy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(AppEngineRequestStats).pybe();
         this.cemohoqal.map(Rujahin);
         this.cemohoqal.map(Fuzi).jotovaq(Zyto);
         return;
      }

      private function wepo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Rujahin);
         this.cemohoqal.map(Fuzi).jotovaq(Paqe);
         return;
      }

      private function gonedyvus() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Fuzi).jotovaq(Rujahin);
         return;
      }
   }

}