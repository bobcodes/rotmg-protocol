package vavufer
{
   import nasokuqa.Myky;
   import nec.Zirewe;
   import com.company.assembleegameclient.util.offer.Offer;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;


   public class Nutacuj extends Object implements Myky
   {
      public function Nutacuj() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function lyqapu() : Boolean {
         return true;
      }

      public function nutawic() : Boolean {
         return true;
      }

      public function cuwuqe(param1:Offer) : Zirewe {
         return new Sire().setParams(I18nKeys.suve,{cost:param1.price_});
      }

      public function tejotez() : String {
         return "rotmg.KabamPayment.setupRotmgAccount";
      }
   }

}