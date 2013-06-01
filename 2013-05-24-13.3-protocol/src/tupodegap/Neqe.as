package tupodegap
{
[CLASS8]   import komawowag.Silikyta;
   import komawowag.Net;
   import aaa.rotmg.config.GoogleAppConfig;
   import kyco.Nun;
   import aaaa.rotmg.net.HttpClient;
   import aaa.rotmg.net.HttpClientUrlParams;
   import dopifo.AppEngineRequestStats;
   import dopifo.Rujahin;
   import aaa.rotmg.net.HttpClientWrapper;
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

      public var setup:GoogleAppConfig;

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
         this.cemohoqal.map(HttpClient).jotovaq(HttpClientUrlParams);
         return;
      }

      private function dawy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(AppEngineRequestStats).pybe();
         this.cemohoqal.map(Rujahin);
         this.cemohoqal.map(HttpClientWrapper).jotovaq(Zyto);
         return;
      }

      private function wepo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Rujahin);
         this.cemohoqal.map(HttpClientWrapper).jotovaq(Paqe);
         return;
      }

      private function gonedyvus() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(HttpClientWrapper).jotovaq(Rujahin);
         return;
      }
   }

}