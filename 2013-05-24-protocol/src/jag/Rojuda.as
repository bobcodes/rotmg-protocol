package jag
{
   import komawowag.Silikyta;
   import komawowag.Net;
   import aaa.rotmg.config.GoogleAppConfig;
   import flash.display.DisplayObjectContainer;
   import kyco.Nun;
   import lagizizoq.Mys;
   import bidav.Duwuweb;
   import kyku.Qodibyl;
   import nitotohyk.Zyqyt;
   import raqu.Cigules;
   import raqu.Poridu;
   import rotmg.aaa.taskAppInitTask;
   import hotewa.Baqifa;
   import hotewa.Lug;
   import hotewa.Nowuved;
   import zybome.Mesi;
   import zybome.Bohi;
   import raqu.Sikywybu;
   import zybome.Qibosaw;
   import raqu.Fesezosit;
   import zybome.Dupaleby;
   import raqu.Pobu;
   import zybome.Wuzigeqi;
   import raqu.Wolugyty;
   import zybome.Faz;
   import raqu.Vanubacam;
   import zybome.Lapi;
   import raqu.Mojemetor;
   import zybome.Vec;
   import jiha.Kysysine;
   import zybome.Saw;
   import zybome.Mov;
   import kyt.Zurucuvy;
   import kyt.Rihici;
   import gag.Gawu;
   import cidehov.PurchaseCharacterClassTask;
   import cidehov.Qeceseku;
   import cidehov.Juw;
   import raqu.Calogu;
   import raqu.Feryj;
   import raqu.Buc;
   import raqu.Hujuhy;
   import raqu.Goq;
   import raqu.Mezafi;
   import raqu.Doqavi;
   import raqu.Jewyd;
   import nitotohyk.Mekesefud;
   import nitotohyk.Gumygoty;
   import tekoh.Gemanyq;
   import zavyka.Vagaseref;


   public class Rojuda extends Object implements Silikyta
   {
      public function Rojuda() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var context:Net;

      public var setup:GoogleAppConfig;

      public var gimenon:DisplayObjectContainer;

      public var cemohoqal:Nun;

      public var davyl:Mys;

      public var mediatorMap:Duwuweb;

      public var startup:Qodibyl;

      private var dom:Zyqyt;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fenuzama();
         this.posu();
         this.zuha();
         this.pepal();
         this.kujoly();
         this.startup.cequ(Cigules,-1000);
         this.startup.cequ(Poridu,-999);
         this.startup.git(AppInitTask);
         this.context.fyf.rewyji(this.init);
         return;
      }

      private function fenuzama() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Baqifa).pybe();
         this.cemohoqal.map(Lug).pybe();
         this.cemohoqal.map(Nowuved).pybe();
         return;
      }

      private function posu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.davyl.map(Cigules).bez(Mesi);
         this.davyl.map(Poridu).bez(Bohi);
         this.davyl.map(Sikywybu).bez(Qibosaw);
         this.davyl.map(Fesezosit).bez(Dupaleby);
         this.davyl.map(Pobu).bez(Wuzigeqi);
         this.davyl.map(Wolugyty).bez(Faz);
         this.davyl.map(Vanubacam).bez(Lapi);
         this.davyl.map(Mojemetor).bez(Vec);
         this.davyl.map(Kysysine).bez(Saw);
         this.davyl.map(Kysysine).bez(Mov);
         return;
      }

      private function zuha() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Zurucuvy).lyvov(Rihici);
         this.cemohoqal.map(Gawu).pybe();
         this.cemohoqal.map(PurchaseCharacterClassTask);
         this.cemohoqal.map(Qeceseku);
         this.cemohoqal.map(Juw).pybe();
         this.cemohoqal.map(AppInitTask);
         return;
      }

      private function pepal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Calogu).pybe();
         this.cemohoqal.map(Feryj).pybe();
         this.cemohoqal.map(Buc).pybe();
         this.cemohoqal.map(Hujuhy).pybe();
         this.cemohoqal.map(Goq).pybe();
         this.cemohoqal.map(Mezafi).pybe();
         this.cemohoqal.map(Doqavi).pybe();
         this.cemohoqal.map(Jewyd).pybe();
         return;
      }

      private function kujoly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(Mekesefud).zusu(Gumygoty);
         this.mediatorMap.map(Gemanyq).zusu(Vagaseref);
         return;
      }

      private function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.hevimari(this.gimenon);
         this.dom=new Zyqyt();
         this.cemohoqal.map(Zyqyt).cufypy(this.dom);
         this.gimenon.addChild(this.dom);
         return;
      }
   }

}