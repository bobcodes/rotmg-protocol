package padin
{
   import gycu.Siv;
   import vilova.Hofuz;
   import tam.Sav;
   import pugem.Febyc;
   import cizagamym.Boquzojul;
   import hunavefeg.Depyrew;
   import gokyc.Rud;
   import com.company.assembleegameclient.util.offer.Offer;
   import vysob.Qofu;


   public class Qizaryqiq extends Siv implements Hofuz
   {
      public function Qizaryqiq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var steam:Sav;

      public var payment:Febyc;

      public var ridecy:Boquzojul;

      public var con:Depyrew;

      public var client:Rud;

      public var zyqeze:Rud;

      private var offer:Offer;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.debug("start task");
         this.offer=this.payment.offer;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/steamworks/purchaseOffer",
            {
               steamid:this.steam.lakovoma(),
               data:this.offer.data_
            }
         );
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.pygafo();
         }
         else
         {
            this.lonibyz(param2);
         }
         return;
      }

      private function pygafo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.debug("purchaseOffer complete");
         this.steam.syha.addOnce(this.zelos);
         return;
      }

      private function zelos(param1:uint, param2:String, param3:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.con.debug("payment authorized {0},{1},{2}",[param1,param2,param3]);
         this.zyqeze.kesanij(2);
         this.client.complete.addOnce(this.but);
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.jycewaniv();
         }
         else
         {
            this.tazugida(param2);
         }
         return;
      }

      private function jycewaniv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.debug("purchaseFinalized complete");
         dom(true);
         return;
      }

      private function tazugida(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.con.debug("purchaseFinalized error {0}",[param1]);
         this.ridecy.dispatch(new Qofu("Error: "+param1));
         dom(false);
         return;
      }

      private function lonibyz(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.con.debug("purchaseOffer request error {0}",[param1]);
         this.ridecy.dispatch(new Qofu("Error: "+param1));
         dom(false);
         return;
      }
   }

}