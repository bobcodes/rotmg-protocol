package jeroheta
{
   import pomujukir.Bemivu;
   import rulobefuq.Vefume;
   import hunavefeg.Depyrew;
   import waryp.Wuzirav;
   import tefabezo.Jydahiluq;


   public class Dozorimif extends Object
   {
      public function Dozorimif() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var syfu:Bemivu;

      public var domain:Vefume;

      public var con:Depyrew;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.domain.lale())
         {
            this.cuhura();
         }
         else
         {
            this.hidi();
         }
         return;
      }

      private function cuhura() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.syfu.dispatch(new Wuzirav());
         return;
      }

      private function hidi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.debug("bad domain, deny");
         this.syfu.dispatch(new Jydahiluq());
         return;
      }
   }

}