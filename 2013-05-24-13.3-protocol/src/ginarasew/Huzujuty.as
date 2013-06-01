package ginarasew
{
   import komawowag.Net;
   import kyco.Nun;
   import bidav.Duwuweb;
   import lagizizoq.Mys;
   import rosebo.Console;
   import nago.Keqis;
   import nago.Visyw;
   import nago.Mopodig;
   import nago.Wozope;
   import nago.Vadotele;
   import vysiluf.Newymuhon;
   import nago.Ryko;
   import vysiluf.Noqog;
   import nago.Tokyw;
   import vysiluf.Tigalej;
   import nago.Meva;
   import nago.Kukodyba;
   import nago.Bela;
   import nago.Vysorado;
   import nago.Hol;
   import sylusowuf.Fiqemeqat;
   import sylusowuf.Jyhi;
   import sylusowuf.Gecafehu;
   import sylusowuf.Jygodu;
   import sylusowuf.Vydizys;
   import sylusowuf.Jypyvim;
   import sylusowuf.Kym;
   import dovivyde.Zil;
   import nitotohyk.Zyqyt;


   public class Huzujuty extends Object
   {
      public function Huzujuty() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Net;

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var davyl:Mys;

      public function setup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lofylise();
         this.buly();
         this.wefak();
         this.wifaja();
         this.context.fyf.rewyji(this.init);
         return;
      }

      private function lofylise() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Console).pybe();
         this.cemohoqal.map(Keqis).pybe();
         this.cemohoqal.map(Visyw).pybe();
         this.cemohoqal.map(Mopodig).pybe();
         this.cemohoqal.map(Wozope).pybe();
         return;
      }

      private function buly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.davyl.map(Vadotele).bez(Newymuhon);
         this.davyl.map(Ryko).bez(Noqog);
         this.davyl.map(Tokyw).bez(Tigalej);
         return;
      }

      private function wefak() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Meva).pybe();
         this.cemohoqal.map(Kukodyba).pybe();
         this.cemohoqal.map(Bela).pybe();
         this.cemohoqal.map(Vysorado).pybe();
         this.cemohoqal.map(Hol).pybe();
         return;
      }

      private function wifaja() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mediatorMap.map(Fiqemeqat).zusu(Jyhi);
         this.mediatorMap.map(Gecafehu).zusu(Jygodu);
         this.mediatorMap.map(Vydizys).zusu(Jypyvim);
         this.mediatorMap.map(Vydizys).zusu(Kym);
         return;
      }

      private function init() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.context.rutudamy(new Zil(this.context));
         this.cemohoqal.getInstance(Tokyw).dispatch();
         var _loc1_:Zyqyt = this.context.cemohoqal.getInstance(Zyqyt);
         _loc1_.console.addChild(new Vydizys());
         return;
      }
   }

}