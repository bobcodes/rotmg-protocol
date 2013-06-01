package jyfugaq
{
[CLASS738]   import syfuqycy.Gyz;
   import vofepimy.Mavoj;
   import com.company.assembleegameclient.util.offer.Offer;
   import tizozowof.Fedyl;


   public class Teqohyp extends Gyz implements Mavoj
   {
      public function Teqohyp() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var offer:Offer;

      public var lowemycu:Fedyl;

      override protected function startTask() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = 
            {
               identifier:this.offer.id_,
               data:this.offer.data_
            }
         ;
         this.lowemycu.jecyp.addOnce(this.zofihy);
         this.lowemycu.purchaseItems(_loc1_);
         return;
      }

      private function zofihy(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}