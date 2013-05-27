package syvab
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import nozil.Jofu;
   import mipiqevul.ConfirmDeleteCharacterDialog;
   import mipiqevul.Ben;
   import fisidij.Hafon;
   import fisidij.Vus;


   public class Hurime extends Object implements Silikyta
   {
      public function Hurime() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var davyl:Mys;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Jofu);
         this.mediatorMap.map(ConfirmDeleteCharacterDialog).zusu(Ben);
         this.davyl.map(Hafon).bez(Vus);
         return;
      }
   }

}