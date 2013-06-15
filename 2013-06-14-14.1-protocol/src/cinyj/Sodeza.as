package cinyj
{
   import kylelimib.Cygusupu;
   import jediwip.Tunyhazo;
   import com.company.assembleegameclient.util.offer.Offer;
   import jediwip.Kybidu;
   import komi.Vibemod;


   public class Sodeza extends Object implements Cygusupu
   {
      public function Sodeza() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function tenyzagi() : Boolean {
         return true;
      }

      public function jaqi() : Boolean {
         return true;
      }

      public function jirigene(param1:Offer) : Tunyhazo {
         return new Kybidu().setParams(Vibemod.cah,{cost:param1.price_});
      }

      public function gepoza() : String {
         return "rotmg.KabamPayment.setupRotmgAccount";
      }
   }

}