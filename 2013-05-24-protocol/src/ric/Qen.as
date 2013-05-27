package ric
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import ruwa.Account;
   import nasokuqa.Myky;
   import vavufer.Nutacuj;
   import jiha.Cemy;
   import ripu.Gigida;
   import jiha.Rugivo;
   import ripu.Vugedica;
   import jiha.Qygubi;
   import ripu.Buqy;
   import zylesakob.Vifil;
   import ripu.Kyfucoby;
   import jiha.Suvy;
   import ripu.Gycozyv;
   import jiha.Licar;
   import ripu.Natifiguc;
   import jiha.Kysysine;
   import ripu.Dugaf;
   import mafu.Few;
   import mafu.Zononygod;
   import mafu.WebChangePasswordDialog;
   import mafu.Qykyd;
   import mafu.WebForgotPasswordDialog;
   import mafu.Bitali;
   import mafu.WebAccountDetailDialog;
   import mafu.Zyjuzyga;
   import mafu.Zad;
   import mafu.Jadosew;
   import mafu.WebLoginDialog;
   import mafu.Holunozyr;
   import dopumitud.Kygejym;
   import cyza.Gava;
   import dopumitud.Jetemiqon;
   import cyza.Tyjelina;
   import dopumitud.Suquzujow;
   import cyza.Zehunisi;
   import dopumitud.Gilapik;
   import cyza.Sycajegoq;
   import dopumitud.Lufanon;
   import cyza.Zivyjajy;
   import dopumitud.Rykuzen;
   import cyza.Duma;
   import dopumitud.Hazagoty;
   import cyza.Milobejy;
   import dopumitud.Wok;
   import cyza.Cel;


   public class Qen extends Object implements Silikyta
   {
      public function Qen() {
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
         this.bezeronir();
         return;
      }

      protected function lofylise() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Account).lyvov(Durujeduj);
         this.cemohoqal.map(Myky).lyvov(Nutacuj);
         return;
      }

      protected function buly() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.davyl.map(Cemy).bez(Gigida);
         this.davyl.map(Rugivo).bez(Vugedica);
         this.davyl.map(Qygubi).bez(Buqy);
         this.davyl.map(Vifil).bez(Kyfucoby);
         this.davyl.map(Suvy).bez(Gycozyv);
         this.davyl.map(Licar).bez(Natifiguc);
         this.davyl.map(Kysysine).bez(Dugaf);
         return;
      }

      protected function wifaja() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mediatorMap.map(Few).zusu(Zononygod);
         this.mediatorMap.map(WebChangePasswordDialog).zusu(Qykyd);
         this.mediatorMap.map(WebForgotPasswordDialog).zusu(Bitali);
         this.mediatorMap.map(WebAccountDetailDialog).zusu(Zyjuzyga);
         this.mediatorMap.map(Zad).zusu(Jadosew);
         this.mediatorMap.map(WebLoginDialog).zusu(Holunozyr);
         return;
      }

      protected function bezeronir() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Kygejym).jotovaq(Gava);
         this.cemohoqal.map(Jetemiqon).jotovaq(Tyjelina);
         this.cemohoqal.map(Suquzujow).jotovaq(Zehunisi);
         this.cemohoqal.map(Gilapik).jotovaq(Sycajegoq);
         this.cemohoqal.map(Lufanon).jotovaq(Zivyjajy);
         this.cemohoqal.map(Rykuzen).jotovaq(Duma);
         this.cemohoqal.map(Hazagoty).jotovaq(Milobejy);
         this.cemohoqal.map(Wok).jotovaq(Cel);
         return;
      }
   }

}