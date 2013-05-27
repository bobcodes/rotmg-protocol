package qetitat
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import cucowury.Vylasy;
   import boryb.Fihyvy;
   import vuvanadov.Lazi;
   import vuvanadov.Cadi;
   import vuvanadov.Vyrydyl;


   public class Pezibibap extends Object implements Silikyta
   {
      public function Pezibibap() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var davyl:Mys;

      public var setup:Vylasy;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mediatorMap.map(WebMain).zusu(Fihyvy);
         this.gidyniny();
         return;
      }

      private function gidyniny() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.setup.cuk())
         {
            this.davyl.map(Lazi).bez(Cadi);
         }
         else
         {
            this.davyl.map(Lazi).bez(Vyrydyl);
         }
         return;
      }
   }

}