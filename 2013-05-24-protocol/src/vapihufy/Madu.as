package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Lufanon;
   import com.company.assembleegameclient.util.offer.Offer;
   import nukobi.Fozydo;


   public class Madu extends Fijarih implements Lufanon
   {
      public function Madu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var offer:Offer;

      public var zefy:Fozydo;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = 
            {
               identifier:this.offer.id_,
               data:this.offer.data_
            }
         ;
         this.zefy.sagut.addOnce(this.pajyqyjom);
         this.zefy.purchaseItems(_loc1_);
         return;
      }

      private function pajyqyjom(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         syjavimu(true);
         return;
      }
   }

}