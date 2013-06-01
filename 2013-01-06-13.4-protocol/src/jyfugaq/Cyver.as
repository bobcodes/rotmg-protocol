package jyfugaq
{
[CLASS761]   import syfuqycy.Gyz;
   import vofepimy.Hucu;
   import leselo.Cetyqysy;
   import leselo.Account;
   import tizozowof.Fedyl;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Cyver extends Gyz implements Hucu
   {
      public function Cyver() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var payment:Cetyqysy;

      public var account:Account;

      public var lowemycu:Fedyl;

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
         this.lowemycu.jecyp.addOnce(this.zofihy);
         this.lowemycu.purchaseItems(_loc2_);
         return;
      }

      private function zofihy(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}