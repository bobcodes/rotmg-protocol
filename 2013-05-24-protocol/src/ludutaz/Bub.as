package ludutaz
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import bidav.Duwuweb;
   import cucowury.Vylasy;
   import heko.Kup;
   import movimet.Parari;
   import cynyjegi.Sivigyda;
   import com.company.ui.Sytubyvyg;
   import movimet.Kisedi;
   import movimet.Jetadopuc;
   import heko.Vagabe;
   import dokohi.Vekyt;
   import heko.Lasudodun;


   public class Bub extends Object implements Silikyta
   {
      public function Bub() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var nerynuk:Vylasy;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cemohoqal.map(Kup).pybe();
         this.gabowygyg();
         this.mediatorMap.map(Parari).zusu(Sivigyda);
         this.mediatorMap.map(Sytubyvyg).zusu(Kisedi);
         this.cemohoqal.map(Jetadopuc);
         return;
      }

      private function gabowygyg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.nerynuk.dyb())
         {
            this.cemohoqal.map(Vagabe).jotovaq(Vekyt);
         }
         else
         {
            this.cemohoqal.map(Vagabe).lyvov(Lasudodun);
         }
         return;
      }
   }

}