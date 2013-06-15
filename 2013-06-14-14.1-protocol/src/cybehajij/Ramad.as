package cybehajij
{
   import gycu.Siv;
   import vilova.Boqadaq;
   import pugem.Account;
   import com.company.assembleegameclient.util.offer.Offer;
   import kylelimib.Zazasinip;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.util.offer.Offers;
   import com.company.assembleegameclient.util.Tiguziro;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;


   public class Ramad extends Siv implements Boqadaq
   {
      public function Ramad() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var offer:Offer;

      public var gyk:Zazasinip;

      public var paymentMethod:String;

      override protected function startTask() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         Parameters.data_.paymentMethod=this.paymentMethod;
         Parameters.save();
         var _loc1_:Offers = this.gyk.puputazes;
         var _loc2_:Tiguziro = Tiguziro.muluq(this.paymentMethod);
         var _loc3_:String = _loc2_.rezocu(_loc1_.tok,_loc1_.exp,this.offer);
         navigateToURL(new URLRequest(_loc3_),"_blank");
         dom(true);
         return;
      }
   }

}