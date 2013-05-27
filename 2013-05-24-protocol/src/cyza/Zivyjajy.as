package cyza
{
   import gag.Fijarih;
   import dopumitud.Lufanon;
   import aaa.rotmg.account.Account;
   import com.company.assembleegameclient.util.offer.Offer;
   import nasokuqa.Lotop;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.util.offer.Offers;
   import com.company.assembleegameclient.util.Repipi;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;


   public class Zivyjajy extends Fijarih implements Lufanon
   {
      public function Zivyjajy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var offer:Offer;

      public var ciqawal:Lotop;

      public var paymentMethod:String;

      override protected function startTask() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         UserConfig.data_.paymentMethod=this.paymentMethod;
         UserConfig.save();
         var _loc1_:Offers = this.ciqawal.mynuroqyl;
         var _loc2_:Repipi = Repipi.pomyrory(this.paymentMethod);
         var _loc3_:String = _loc2_.datol(_loc1_.tok,_loc1_.exp,this.offer);
         navigateToURL(new URLRequest(_loc3_),"_blank");
         syjavimu(true);
         return;
      }
   }

}