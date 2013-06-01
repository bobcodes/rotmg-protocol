package lyfer
{
[CLASS717]   import syfuqycy.Gyz;
   import vofepimy.Hucu;
   import zib.Bebemed;
   import leselo.Cetyqysy;
   import kirofyny.Hehuf;
   import bikyvym.Voduzak;
   import qiwyz.Bozakehy;
   import com.company.assembleegameclient.util.offer.Offer;
   import cejyva.Qak;


   public class Fir extends Gyz implements Hucu
   {
      public function Fir() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var steam:Bebemed;

      public var payment:Cetyqysy;

      public var lyhog:Hehuf;

      public var wop:Voduzak;

      public var client:Bozakehy;

      public var juzorimig:Bozakehy;

      private var offer:Offer;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wop.debug("start task");
         this.offer=this.payment.offer;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/steamworks/purchaseOffer",
            {
               steamid:this.steam.danyhuw(),
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
            this.haqijut();
         }
         else
         {
            this.gusiqu(param2);
         }
         return;
      }

      private function haqijut() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wop.debug("purchaseOffer complete");
         this.steam.vibiqynyf.addOnce(this.cuwupof);
         return;
      }

      private function cuwupof(param1:uint, param2:String, param3:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.wop.debug("payment authorized {0},{1},{2}",[param1,param2,param3]);
         this.juzorimig.casegyma(2);
         this.client.complete.addOnce(this.fola);
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.ryguhuf();
         }
         else
         {
            this.pavig(param2);
         }
         return;
      }

      private function ryguhuf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.debug("purchaseFinalized complete");
         pylebodyq(true);
         return;
      }

      private function pavig(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wop.debug("purchaseFinalized error {0}",[param1]);
         this.lyhog.dispatch(new Qak("Error: "+param1));
         pylebodyq(false);
         return;
      }

      private function gusiqu(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wop.debug("purchaseOffer request error {0}",[param1]);
         this.lyhog.dispatch(new Qak("Error: "+param1));
         pylebodyq(false);
         return;
      }
   }
[/CLASS]
}