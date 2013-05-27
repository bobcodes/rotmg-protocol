package zyciwin
{
   import gag.Fijarih;
   import dopumitud.Lufanon;
   import ruwa.Account;
   import cyt.Zivovype;
   import com.company.assembleegameclient.util.offer.Offer;
   import wegyluke.Hez;
   import komawowag.Becepog;
   import negirilu.Fuzi;
   import nas.Vyha;


   public class Bywer extends Fijarih implements Lufanon
   {
      public function Bywer() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var steam:Zivovype;

      public var offer:Offer;

      public var paymentMethod:String;

      public var naval:Hez;

      public var qiqely:Becepog;

      public var first:Fuzi;

      public var tuzol:Fuzi;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiqely.debug("SteamPurchaseGoldTask startTask");
         this.steam.fuperyp.addOnce(this.nuwekyjo);
         this.first.fug(2);
         this.first.complete.addOnce(this.onComplete);
         this.first.sendRequest("/steamworks/purchaseOffer",
            {
               steamid:this.steam.berygo(),
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
            this.wypuly();
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      private function wypuly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiqely.debug("SteamPurchaseGoldTask purchaseOffer confirmed by AppEngine");
         return;
      }

      private function nuwekyjo(param1:uint, param2:String, param3:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.qiqely.debug("SteamPurchaseGoldTask payment authorized by Steam");
         this.tuzol.fug(2);
         this.tuzol.complete.addOnce(this.vivoje);
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
            this.reportError(param2);
         }
         return;
      }

      private function fyfuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.debug("SteamPurchaseGoldTask purchase finalized");
         syjavimu(true);
         return;
      }

      private function reportError(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = "Error: "+param1;
         this.qiqely.debug("finalize error {0}",[_loc2_]);
         this.naval.dispatch(new Vyha(_loc2_));
         syjavimu(false);
         return;
      }
   }

}