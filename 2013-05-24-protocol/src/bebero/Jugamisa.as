package bebero
{
   import komawowag.Silikyta;
   import komawowag.Net;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import jypuq.Fyzukeha;
   import murez.ReskinCharacterView;
   import murez.Rugaj;
   import murez.ReskinPanel;
   import murez.Ribesim;
   import najilihak.Lelequ;
   import najilihak.Kov;
   import najilihak.Tofud;
   import najilihak.Majurav;
   import najilihak.Putinil;
   import najilihak.Levewe;
   import aaa.rotmg.action.mapping.RotMGActionMapperAbstract;
   import sonepyc.Symukytu;
   import najilihak.Tegiqon;


   public class Jugamisa extends Object implements Silikyta
   {
      public function Jugamisa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Net;

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var davyl:Mys;

      public var dyje:Fyzukeha;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mediatorMap.map(ReskinCharacterView).zusu(Rugaj);
         this.mediatorMap.map(ReskinPanel).zusu(Ribesim);
         this.davyl.map(Lelequ).bez(Kov);
         this.davyl.map(Tofud).bez(Majurav);
         this.davyl.map(Putinil).bez(Levewe);
         this.dyje.map(RotMGActionMapperAbstract.RESKIN).rafakone(Symukytu).hitizy(Tegiqon);
         this.context.fyf.rewyji(this.cijakini);
         return;
      }

      private function cijakini() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.getInstance(Lelequ).dispatch();
         return;
      }
   }
}