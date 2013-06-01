package teq
{
[CLASS648]   import syfuqycy.Gyz;
   import vofepimy.Mavoj;
   import leselo.Account;
   import com.company.assembleegameclient.util.offer.Offer;
   import helepebas.Zedypina;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.util.offer.Offers;
   import com.company.assembleegameclient.util.Ruzizi;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;


   public class Sit extends Gyz implements Mavoj
   {
      public function Sit() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var offer:Offer;

      public var wafu:Zedypina;

      public var paymentMethod:String;

      override protected function startTask() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         Parameters.data_.paymentMethod=this.paymentMethod;
         Parameters.save();
         var _loc1_:Offers = this.wafu.cok;
         var _loc2_:Ruzizi = Ruzizi.qovozuh(this.paymentMethod);
         var _loc3_:String = _loc2_.hewyhip(_loc1_.tok,_loc1_.exp,this.offer);
         navigateToURL(new URLRequest(_loc3_),"_blank");
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}