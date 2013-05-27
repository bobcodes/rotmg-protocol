package quqe
{
   import kyco.Nun;
   import bisok.Cejih;
   import zoroc.Bezuco;
   import zoroc.Gecezyw;
   import pujo.Tiky;


   public class Sejavuviv extends Object
   {
      public function Sejavuviv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var cemohoqal:Nun;

      private var gijokutad:Cejih;

      private var message:Pasijaju;

      private var hucogomy:Bezuco;

      private var lilyrom:Bezuco;

      public function daw(param1:Pasijaju) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.message=param1;
         this.gijokutad=new Cejih();
         this.diwyte();
         this.devic(param1);
         this.sigy();
         return;
      }

      private function diwyte() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Gecezyw = this.cemohoqal.getInstance(Gecezyw);
         this.hucogomy=_loc1_.guj(this.message.mosakymu);
         this.hucogomy.zepipy(this.message.lumitynac);
         this.gijokutad.hucogomy=this.hucogomy;
         return;
      }

      private function devic(param1:Pasijaju) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lilyrom=Bezuco.clone(this.hucogomy);
         this.lilyrom.zepipy(param1.vevesy);
         this.gijokutad.lilyrom=this.lilyrom;
         return;
      }

      private function sigy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tiky = this.cemohoqal.getInstance(Tiky);
         _loc1_.dispatch(this.gijokutad);
         return;
      }
   }

}