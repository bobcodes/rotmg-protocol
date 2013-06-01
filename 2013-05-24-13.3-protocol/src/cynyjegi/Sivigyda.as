package cynyjegi
{
   import qov.Kalefu;
   import movimet.Parari;
   import heko.Kup;
   import heko.Vagabe;


   public class Sivigyda extends Kalefu
   {
      public function Sivigyda() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var qic:Parari;

      public var radida:Kup;

      public var lulim:Vagabe;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qic.cup(this.radida.gibivi());
         this.qic.hitame(this.lulim.cetovuzy());
         this.qic.menyhaky(this.lulim.nezori());
         return;
      }
   }

}