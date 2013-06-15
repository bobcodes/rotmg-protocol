package wuwulyni
{
   import gycu.Siv;
   import vilova.Hofuz;
   import pugem.Febyc;
   import pugem.Account;
   import taruco.Hosoqoqy;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Semozuby extends Siv implements Hofuz
   {
      public function Semozuby() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var payment:Febyc;

      public var account:Account;

      public var ciqocu:Hosoqoqy;

      override protected function startTask() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Offer = this.payment.offer;
         var _loc2_:Object = 
            {
               identifier:_loc1_.id_,
               data:_loc1_.data_
            }
         ;
         this.ciqocu.vomabejo.addOnce(this.picyzyhob);
         this.ciqocu.purchaseItems(_loc2_);
         return;
      }

      private function picyzyhob(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dom(true);
         return;
      }
   }

}