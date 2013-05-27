package ninu
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import wokobewig.Haqy;
   import wokobewig.Vevizu;
   import ruwa.Account;
   import nasokuqa.Myky;
   import wokobewig.Wogate;
   import jiha.Kysysine;
   import jiha.Cemy;
   import huzy.Qogudu;
   import naj.KabamAccountDetailDialog;
   import naj.Guh;
   import naj.Kajoraqu;
   import naj.Seryriqak;
   import dopumitud.Gilapik;
   import cyza.Sycajegoq;
   import dopumitud.Jetemiqon;
   import kevusu.Havucyf;
   import dopumitud.Lufanon;
   import cyza.Zivyjajy;


   public class Gilo extends Object implements Silikyta
   {
      public function Gilo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var davyl:Mys;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jahoj();
         this.buly();
         this.wifaja();
         this.mesawic();
         return;
      }

      protected function jahoj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Haqy).lyvov(Vevizu);
         this.cemohoqal.map(Account).lyvov(Ryq);
         this.cemohoqal.map(Myky).lyvov(Wogate);
         this.cemohoqal.map(Kysysine).pybe();
         return;
      }

      private function buly() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.davyl.map(Cemy).bez(Qogudu);
         return;
      }

      protected function wifaja() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(KabamAccountDetailDialog).zusu(Guh);
         this.mediatorMap.map(Kajoraqu).zusu(Seryriqak);
         return;
      }

      protected function mesawic() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Gilapik).jotovaq(Sycajegoq);
         this.cemohoqal.map(Jetemiqon).jotovaq(Havucyf);
         this.cemohoqal.map(Lufanon).jotovaq(Zivyjajy);
         return;
      }
   }

}