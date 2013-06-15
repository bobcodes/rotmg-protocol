package wuwulyni
{
   import gycu.Siv;
   import vilova.Boqadaq;
   import com.company.assembleegameclient.util.offer.Offer;
   import taruco.Hosoqoqy;


   public class Lyc extends Siv implements Boqadaq
   {
      public function Lyc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var offer:Offer;

      public var ciqocu:Hosoqoqy;

      override protected function startTask() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = 
            {
               identifier:this.offer.id_,
               data:this.offer.data_
            }
         ;
         this.ciqocu.vomabejo.addOnce(this.picyzyhob);
         this.ciqocu.purchaseItems(_loc1_);
         return;
      }

      private function picyzyhob(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dom(true);
         return;
      }
   }

}