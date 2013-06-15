package duhidami
{
   import kylelimib.Cygusupu;
   import jediwip.Tunyhazo;
   import com.company.assembleegameclient.util.offer.Offer;
   import jediwip.Kybidu;
   import komi.Vibemod;


   public class Dymok extends Object implements Cygusupu
   {
      public function Dymok() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function tenyzagi() : Boolean {
         return false;
      }

      public function jaqi() : Boolean {
         return false;
      }

      public function jirigene(param1:Offer) : Tunyhazo {
         return new Kybidu().setParams(Vibemod.difyhuqit,
            {
               cost:param1.price_,
               currency:param1.currency_
            }
         );
      }

      public function gepoza() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }
   }

}