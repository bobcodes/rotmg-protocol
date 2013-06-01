package tuzusana
{
   import nasokuqa.Myky;
   import nec.Zirewe;
   import com.company.assembleegameclient.util.offer.Offer;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;


   public class Cyvuliv extends Object implements Myky
   {
      public function Cyvuliv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function lyqapu() : Boolean {
         return false;
      }

      public function nutawic() : Boolean {
         return false;
      }

      public function cuwuqe(param1:Offer) : Zirewe {
         return new Sire().setParams(I18nKeys.fiq,
            {
               cost:param1.price_,
               currency:param1.currency_
            }
         );
      }

      public function tejotez() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }
   }

}