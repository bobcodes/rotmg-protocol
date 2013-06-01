package gyjad
{
[CLASS68]   import bikyvym.Tihoc;
   import pogefeqeh.Wahovy;
   import wufyba.Cobyjowek;
   import zajenevik.Tif;
   import leselo.Account;
   import helepebas.Wewizy;
   import kyhawibyc.Cek;
   import rysuho.Kitypagur;
   import sygy.Vuk;
   import rysuho.Nyzeveju;
   import sygy.Fajarijuh;
   import rysuho.Waluwyl;
   import sygy.Kyd;
   import fur.Zunaho;
   import sygy.Ruqug;
   import rysuho.Wovuru;
   import sygy.Vyjar;
   import rysuho.Dig;
   import sygy.Memas;
   import rysuho.Gyry;
   import sygy.Hywakywym;
   import zegacymo.Raleke;
   import zegacymo.Qyjopitiq;
   import zegacymo.WebChangePasswordDialog;
   import zegacymo.Siwoduwyp;
   import zegacymo.WebForgotPasswordDialog;
   import zegacymo.Hekivus;
   import zegacymo.WebAccountDetailDialog;
   import zegacymo.Moziqyha;
   import zegacymo.Jugec;
   import zegacymo.Weq;
   import zegacymo.WebLoginDialog;
   import zegacymo.Tunaso;
   import vofepimy.Judujimu;
   import teq.Caryz;
   import vofepimy.Poheg;
   import teq.Lodygy;
   import vofepimy.Rucikezab;
   import teq.Jajyvo;
   import vofepimy.Hucu;
   import teq.Ruge;
   import vofepimy.Mavoj;
   import teq.Sit;
   import vofepimy.Karakicy;
   import teq.Cyqy;
   import vofepimy.Zabi;
   import teq.Zuviti;
   import vofepimy.Gymat;
   import teq.Horipypys;


   public class Wowahy extends Object implements Tihoc
   {
      public function Wowahy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var viqelo:Wahovy;

      public var mediatorMap:Cobyjowek;

      public var pyv:Tif;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fabemus();
         this.nidab();
         this.gesofi();
         this.wohovat();
         return;
      }

      protected function fabemus() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqelo.map(Account).dib(Jibaw);
         this.viqelo.map(Wewizy).dib(Cek);
         return;
      }

      protected function nidab() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pyv.map(Kitypagur).paradi(Vuk);
         this.pyv.map(Nyzeveju).paradi(Fajarijuh);
         this.pyv.map(Waluwyl).paradi(Kyd);
         this.pyv.map(Zunaho).paradi(Ruqug);
         this.pyv.map(Wovuru).paradi(Vyjar);
         this.pyv.map(Dig).paradi(Memas);
         this.pyv.map(Gyry).paradi(Hywakywym);
         return;
      }

      protected function gesofi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mediatorMap.map(Raleke).sab(Qyjopitiq);
         this.mediatorMap.map(WebChangePasswordDialog).sab(Siwoduwyp);
         this.mediatorMap.map(WebForgotPasswordDialog).sab(Hekivus);
         this.mediatorMap.map(WebAccountDetailDialog).sab(Moziqyha);
         this.mediatorMap.map(Jugec).sab(Weq);
         this.mediatorMap.map(WebLoginDialog).sab(Tunaso);
         return;
      }

      protected function wohovat() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqelo.map(Judujimu).kagipe(Caryz);
         this.viqelo.map(Poheg).kagipe(Lodygy);
         this.viqelo.map(Rucikezab).kagipe(Jajyvo);
         this.viqelo.map(Hucu).kagipe(Ruge);
         this.viqelo.map(Mavoj).kagipe(Sit);
         this.viqelo.map(Karakicy).kagipe(Cyqy);
         this.viqelo.map(Zabi).kagipe(Zuviti);
         this.viqelo.map(Gymat).kagipe(Horipypys);
         return;
      }
   }
[/CLASS]
}