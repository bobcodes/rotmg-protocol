package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Gilapik;
   import ruwa.Hytezod;
   import aaa.rotmg.account.Account;
   import nukobi.Fozydo;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Wunuke extends Fijarih implements Gilapik
   {
      public function Wunuke() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var payment:Hytezod;

      public var account:Account;

      public var zefy:Fozydo;

      override protected function startTask() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Offer = this.payment.offer;
         var _loc2_:Object = 
            {
               identifier:_loc1_.id_,
               data:_loc1_.data_
            }
         ;
         this.zefy.sagut.addOnce(this.pajyqyjom);
         this.zefy.purchaseItems(_loc2_);
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