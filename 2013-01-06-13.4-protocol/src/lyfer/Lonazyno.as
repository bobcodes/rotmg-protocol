package lyfer
{
[CLASS724]   import syfuqycy.Gyz;
   import vofepimy.Mavoj;
   import leselo.Account;
   import zib.Bebemed;
   import com.company.assembleegameclient.util.offer.Offer;
   import kirofyny.Hehuf;
   import bikyvym.Voduzak;
   import qiwyz.Bozakehy;
   import cejyva.Qak;


   public class Lonazyno extends Gyz implements Mavoj
   {
      public function Lonazyno() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var steam:Bebemed;

      public var offer:Offer;

      public var paymentMethod:String;

      public var lyhog:Hehuf;

      public var wop:Voduzak;

      public var first:Bozakehy;

      public var juzorimig:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.debug("SteamPurchaseGoldTask startTask");
         this.steam.vibiqynyf.addOnce(this.cuwupof);
         this.first.casegyma(2);
         this.first.complete.addOnce(this.onComplete);
         this.first.sendRequest("/steamworks/purchaseOffer",
            {
               steamid:this.steam.danyhuw(),
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
            this.haqijut();
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      private function haqijut() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.debug("SteamPurchaseGoldTask purchaseOffer confirmed by AppEngine");
         return;
      }

      private function cuwupof(param1:uint, param2:String, param3:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.wop.debug("SteamPurchaseGoldTask payment authorized by Steam");
         this.juzorimig.casegyma(2);
         this.juzorimig.complete.addOnce(this.fola);
         this.juzorimig.sendRequest("/steamworks/finalizePurchase",
            {
               appid:param1,
               orderid:param2,
               authorized:param3?1:0
            }
         );
         return;
      }

      private function fola(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.ryguhuf();
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      private function ryguhuf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.debug("SteamPurchaseGoldTask purchase finalized");
         pylebodyq(true);
         return;
      }

      private function reportError(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = "Error: "+param1;
         this.wop.debug("finalize error {0}",[_loc2_]);
         this.lyhog.dispatch(new Qak(_loc2_));
         pylebodyq(false);
         return;
      }
   }
[/CLASS]
}