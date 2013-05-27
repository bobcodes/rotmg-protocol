package cyt
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import ruwa.Account;
   import nasokuqa.Myky;
   import tuzusana.Cyvuliv;
   import jiha.Kysysine;
   import jiha.Cemy;
   import meqagudu.Raqoqepo;
   import jiha.Diqyc;
   import meqagudu.Derohev;
   import jiha.Nikyqy;
   import meqagudu.Kyhi;
   import tycerinos.SteamAccountDetailDialog;
   import tycerinos.Lufekaroc;
   import kat.RegisterWebAccountDialog;
   import tycerinos.Fove;
   import kat.LinkWebAccountDialog;
   import kat.Gywy;
   import zyciwin.Def;
   import dopumitud.Hiwa;
   import zyciwin.Cygibu;
   import dopumitud.Jetemiqon;
   import zyciwin.Soguda;
   import zyciwin.Gemysomyd;
   import dopumitud.Gilapik;
   import zyciwin.Ciron;
   import dopumitud.Lufanon;
   import zyciwin.Bywer;
   import dopumitud.Rykuzen;
   import zyciwin.Karycol;


   public class Ketome extends Object implements Silikyta
   {
      public function Ketome() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var davyl:Mys;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lofylise();
         this.buly();
         this.wifaja();
         this.mesawic();
         return;
      }

      protected function lofylise() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Account).lyvov(Car);
         this.cemohoqal.map(Myky).lyvov(Cyvuliv);
         this.cemohoqal.map(Kysysine).pybe();
         return;
      }

      protected function buly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.davyl.map(Cemy).bez(Raqoqepo);
         this.davyl.map(Diqyc).bez(Derohev);
         this.davyl.map(Nikyqy).bez(Kyhi);
         return;
      }

      protected function wifaja() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(SteamAccountDetailDialog).zusu(Lufekaroc);
         this.mediatorMap.map(RegisterWebAccountDialog).zusu(Fove);
         this.mediatorMap.map(LinkWebAccountDialog).zusu(Gywy);
         return;
      }

      protected function mesawic() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Zivovype).lyvov(Def);
         this.cemohoqal.map(Hiwa).jotovaq(Cygibu);
         this.cemohoqal.map(Jetemiqon).jotovaq(Soguda);
         this.cemohoqal.map(Gemysomyd);
         this.cemohoqal.map(Gilapik).jotovaq(Ciron);
         this.cemohoqal.map(Lufanon).jotovaq(Bywer);
         this.cemohoqal.map(Rykuzen).jotovaq(Karycol);
         return;
      }
   }

}