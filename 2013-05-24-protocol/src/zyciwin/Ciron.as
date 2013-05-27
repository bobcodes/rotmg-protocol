package zyciwin
{
   import gag.Fijarih;
   import dopumitud.Gilapik;
   import cyt.Zivovype;
   import ruwa.Hytezod;
   import wegyluke.Hez;
   import komawowag.Becepog;
   import aaa.rotmg.net.HttpClientWrapper;
   import com.company.assembleegameclient.util.offer.Offer;
   import nas.Vyha;


   public class Ciron extends Fijarih implements Gilapik
   {
      public function Ciron() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var steam:Zivovype;

      public var payment:Hytezod;

      public var naval:Hez;

      public var qiqely:Becepog;

      public var client:HttpClientWrapper;

      public var tuzol:HttpClientWrapper;

      private var offer:Offer;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.debug("start task");
         this.offer=this.payment.offer;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/steamworks/purchaseOffer",
            {
               steamid:this.steam.berygo(),
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
            this.wypuly();
         }
         else
         {
            this.hoji(param2);
         }
         return;
      }

      private function wypuly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiqely.debug("purchaseOffer complete");
         this.steam.fuperyp.addOnce(this.nuwekyjo);
         return;
      }

      private function nuwekyjo(param1:uint, param2:String, param3:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.qiqely.debug("payment authorized {0},{1},{2}",[param1,param2,param3]);
         this.tuzol.fug(2);
         this.client.complete.addOnce(this.vivoje);
         this.tuzol.sendRequest("/steamworks/finalizePurchase",
            {
               appid:param1,
               orderid:param2,
               authorized:param3?1:0
            }
         );
         return;
      }

      private function vivoje(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.fyfuj();
         }
         else
         {
            this.goqi(param2);
         }
         return;
      }

      private function fyfuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.debug("purchaseFinalized complete");
         syjavimu(true);
         return;
      }

      private function goqi(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qiqely.debug("purchaseFinalized error {0}",[param1]);
         this.naval.dispatch(new Vyha("Error: "+param1));
         syjavimu(false);
         return;
      }

      private function hoji(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qiqely.debug("purchaseOffer request error {0}",[param1]);
         this.naval.dispatch(new Vyha("Error: "+param1));
         syjavimu(false);
         return;
      }
   }

}