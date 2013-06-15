package padin
{
   import gycu.Siv;
   import vilova.Boqadaq;
   import pugem.Account;
   import tam.Sav;
   import com.company.assembleegameclient.util.offer.Offer;
   import cizagamym.Boquzojul;
   import hunavefeg.Depyrew;
   import gokyc.Rud;
   import vysob.Qofu;


   public class Lomo extends Siv implements Boqadaq
   {
      public function Lomo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var steam:Sav;

      public var offer:Offer;

      public var paymentMethod:String;

      public var ridecy:Boquzojul;

      public var con:Depyrew;

      public var first:Rud;

      public var zyqeze:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.con.debug("SteamPurchaseGoldTask startTask");
         this.steam.syha.addOnce(this.zelos);
         this.first.kesanij(2);
         this.first.complete.addOnce(this.onComplete);
         this.first.sendRequest("/steamworks/purchaseOffer",
            {
               steamid:this.steam.lakovoma(),
               data:this.offer.data_
            }
         );
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.pygafo();
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      private function pygafo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.debug("SteamPurchaseGoldTask purchaseOffer confirmed by AppEngine");
         return;
      }

      private function zelos(param1:uint, param2:String, param3:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.con.debug("SteamPurchaseGoldTask payment authorized by Steam");
         this.zyqeze.kesanij(2);
         this.zyqeze.complete.addOnce(this.but);
         this.zyqeze.sendRequest("/steamworks/finalizePurchase",
            {
               appid:param1,
               orderid:param2,
               authorized:param3?1:0
            }
         );
         return;
      }

      private function but(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.jycewaniv();
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      private function jycewaniv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.debug("SteamPurchaseGoldTask purchase finalized");
         dom(true);
         return;
      }

      private function reportError(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = "Error: "+param1;
         this.con.debug("finalize error {0}",[_loc2_]);
         this.ridecy.dispatch(new Qofu(_loc2_));
         dom(false);
         return;
      }
   }

}