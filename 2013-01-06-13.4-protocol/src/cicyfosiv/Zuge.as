package cicyfosiv
{
[CLASS714]   import helepebas.Wewizy;
   import totuhare.Qebar;
   import com.company.assembleegameclient.util.offer.Offer;
   import totuhare.Zufi;
   import haqakel.Kefyfa;


   public class Zuge extends Object implements Wewizy
   {
      public function Zuge() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function jumys() : Boolean {
         return false;
      }

      public function sujahos() : Boolean {
         return false;
      }

      public function lalemog(param1:Offer) : Qebar {
         return new Zufi().setParams(Kefyfa.suqezy,
            {
               cost:param1.price_,
               currency:param1.currency_
            }
         );
      }

      public function bydec() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }
   }
[/CLASS]
}