package zekeqa
{
   import tytojonib.Kyjefe;
   import sefylew.MoneyFrame;
   import kylelimib.Zazasinip;
   import kylelimib.Cygusupu;
   import civino.Rupizil;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import vilova.Limesofyb;
   import hunavefeg.Depyrew;
   import gycu.Cyqe;
   import vysob.ErrorDialog;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Woqab extends Kyjefe
   {
      public function Woqab() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:MoneyFrame;

      public var model:Zazasinip;

      public var config:Cygusupu;

      public var qetub:Rupizil;

      public var ridecy:Boquzojul;

      public var closeDialogs:Lebovas;

      public var dyk:Limesofyb;

      public var con:Depyrew;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buyNow.add(this.qovokyj);
         this.view.cancel.add(this.onCancel);
         this.del();
         return;
      }

      private function del() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.model.puputazes)
         {
            this.view.initialize(this.model.puputazes,this.config);
         }
         else
         {
            this.nycohuje();
         }
         return;
      }

      private function nycohuje() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyk.byqato.addOnce(this.zagime);
         this.dyk.start();
         return;
      }

      private function zagime(param1:Cyqe, param2:Boolean, param3:String="") : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param2)
         {
            this.view.initialize(this.model.puputazes,this.config);
         }
         else
         {
            this.ridecy.dispatch(new ErrorDialog("Unable to get gold offer information"));
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buyNow.add(this.qovokyj);
         this.view.cancel.add(this.onCancel);
         return;
      }

      protected function qovokyj(param1:Offer, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.con.info("offer {0}, paymentMethod {1}",[param1,param2]);
         this.qetub.dispatch(param1,param2);
         return;
      }

      protected function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}