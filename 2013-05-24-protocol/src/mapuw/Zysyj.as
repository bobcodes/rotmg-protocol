package mapuw
{
   import komawowag.Silikyta;
   import komawowag.Net;
   import kyco.Nun;
   import bidav.Duwuweb;
   import diweli.Mopotyru;
   import diweli.Dilukede;
   import diweli.Pepokymu;
   import diweli.Sicyqaky;
   import hetenedu.Noriqidir;
   import hetenedu.Cup;


   public class Zysyj extends Object implements Silikyta
   {
      public function Zysyj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Net;

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Mopotyru).pybe();
         this.cemohoqal.map(Dilukede).pybe();
         this.cemohoqal.map(Pepokymu).pybe();
         this.cemohoqal.map(Sicyqaky).pybe();
         this.mediatorMap.map(Noriqidir).zusu(Cup);
         return;
      }
   }

}