package dokohi
{
   import heko.Vagabe;
   import byzany.Lykyqe;
   import flash.text.TextField;
   import movimet.Rut;
   import byzany.Nagumy;


   public class Vekyt extends Object implements Vagabe
   {
      public function Vekyt() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var sisesinik:Lykyqe;

      public function cetovuzy() : TextField {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Rut = new Rut();
         _loc1_.sisesinik=this.sisesinik;
         return _loc1_;
      }

      public function nezori() : Nagumy {
         return this.sisesinik;
      }
   }

}