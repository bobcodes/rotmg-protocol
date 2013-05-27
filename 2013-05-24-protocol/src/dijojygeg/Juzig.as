package dijojygeg
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import aaa.rotmg.account.Account;
   import vapihufy.Hogoh;
   import nasokuqa.Myky;
   import mytuk.Qanewoce;
   import jiha.Kysysine;
   import jiha.Cemy;
   import kesoji.Vavisop;
   import jiha.Diqyc;
   import kesoji.Nepihac;
   import jiha.Nikyqy;
   import kesoji.Bygocy;
   import regym.Naciru;
   import kesoji.Zuwa;
   import regym.Dazihyr;
   import kesoji.Wavik;
   import nukobi.KongregateAccountInfoView;
   import nukobi.Dej;
   import nukobi.KongregateAccountDetailDialog;
   import nukobi.Capamubi;
   import kat.RegisterWebAccountDialog;
   import nukobi.Mig;
   import kat.LinkWebAccountDialog;
   import kat.Gywy;
   import nukobi.Fozydo;
   import nukobi.Byfasaziq;
   import dopumitud.Hiwa;
   import vapihufy.Fobyk;
   import dopumitud.Jetemiqon;
   import vapihufy.Malukanew;
   import vapihufy.Jaqagub;
   import dopumitud.Suquzujow;
   import vapihufy.Tuzu;
   import dopumitud.Riqyh;
   import vapihufy.Pazoqor;
   import dopumitud.Gilapik;
   import vapihufy.Wunuke;
   import dopumitud.Lufanon;
   import vapihufy.Madu;
   import dopumitud.Rykuzen;
   import vapihufy.Mimagiruw;


   public class Juzig extends Object implements Silikyta
   {
      public function Juzig() {
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
         this.lofylise();
         this.buly();
         this.mesawic();
         this.wifaja();
         return;
      }

      protected function lofylise() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Account).lyvov(Pan);
         this.cemohoqal.map(Hogoh).pybe();
         this.cemohoqal.map(Myky).lyvov(Qanewoce);
         this.cemohoqal.map(Kysysine).pybe();
         return;
      }

      protected function buly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.davyl.map(Cemy).bez(Vavisop);
         this.davyl.map(Diqyc).bez(Nepihac);
         this.davyl.map(Nikyqy).bez(Bygocy);
         this.davyl.map(Naciru).bez(Zuwa);
         this.davyl.map(Dazihyr).bez(Wavik);
         return;
      }

      protected function wifaja() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(KongregateAccountInfoView).zusu(Dej);
         this.mediatorMap.map(KongregateAccountDetailDialog).zusu(Capamubi);
         this.mediatorMap.map(RegisterWebAccountDialog).zusu(Mig);
         this.mediatorMap.map(LinkWebAccountDialog).zusu(Gywy);
         return;
      }

      protected function mesawic() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Fozydo).lyvov(Byfasaziq);
         this.cemohoqal.map(Hiwa).jotovaq(Fobyk);
         this.cemohoqal.map(Jetemiqon).jotovaq(Malukanew);
         this.cemohoqal.map(Jaqagub);
         this.cemohoqal.map(Suquzujow).jotovaq(Tuzu);
         this.cemohoqal.map(Riqyh).jotovaq(Pazoqor);
         this.cemohoqal.map(Gilapik).jotovaq(Wunuke);
         this.cemohoqal.map(Lufanon).jotovaq(Madu);
         this.cemohoqal.map(Rykuzen).jotovaq(Mimagiruw);
         return;
      }
   }

}