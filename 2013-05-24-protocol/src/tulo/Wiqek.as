package tulo
{
[CLASS6]   import komawowag.Silikyta;
   import komawowag.Net;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import fulaw.Vihekivuc;
   import nico.Nucoz;
   import tuma.Pabacidac;
   import toru.Hepugeq;
   import nico.CharacterSkinListItem;
   import nico.Jygy;
   import nico.Cugeti;
   import nico.Bevycyza;
   import nico.Mivivibif;
   import nico.Kyjyso;
   import nico.ClassDetailView;
   import nico.Der;
   import jiha.Qygubi;
   import tuma.Duhusa;
   import jiha.Kysysine;
   import tuma.Benu;
   import tuma.Sysizy;
   import tuma.Reb;
   import raqu.Mojemetor;
   import tuma.Zamebyfok;
   import tuma.Cidumev;
   import tuma.Heky;
   import fydoni.Wanokevaj;
   import kabam.rotmg.assets.Cibukaz;


   public class Wiqek extends Object implements Silikyta
   {
      public function Wiqek() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Net;

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var davyl:Mys;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Vihekivuc).pybe();
         this.cemohoqal.map(Nucoz).pybe();
         this.cemohoqal.map(Pabacidac).pybe();
         this.cemohoqal.map(Hepugeq);
         this.mediatorMap.map(CharacterSkinListItem).zusu(Jygy);
         this.mediatorMap.map(Cugeti).zusu(Bevycyza);
         this.mediatorMap.map(Mivivibif).zusu(Kyjyso);
         this.mediatorMap.map(ClassDetailView).zusu(Der);
         this.davyl.map(Qygubi).bez(Duhusa);
         this.davyl.map(Kysysine).bez(Benu);
         this.davyl.map(Sysizy).bez(Reb);
         this.davyl.map(Mojemetor).bez(Zamebyfok);
         this.davyl.map(Cidumev).bez(Heky).mitum(Wanokevaj);
         this.context.fyf.rewyji(this.init);
         return;
      }

      private function init() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:XML = XML(new Cibukaz.PlayersCXML());
         var _loc2_:Sysizy = this.cemohoqal.getInstance(Sysizy);
         _loc2_.dispatch(_loc1_);
         return;
      }
   }

}