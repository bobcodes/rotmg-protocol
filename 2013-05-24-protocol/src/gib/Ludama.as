package gib
{
   import qov.Kalefu;
   import kat.MoneyFrame;
   import nasokuqa.Lotop;
   import nasokuqa.Myky;
   import jiha.Rupe;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import dopumitud.Kanyr;
   import komawowag.Becepog;
   import gag.Bysyg;
   import nas.ErrorDialog;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Ludama extends Kalefu
   {
      public function Ludama() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:MoneyFrame;

      public var model:Lotop;

      public var config:Myky;

      public var bunumyzad:Rupe;

      public var naval:Hez;

      public var closeDialogs:Cowymute;

      public var zunofi:Kanyr;

      public var qiqely:Becepog;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buyNow.add(this.tyzukid);
         this.view.cancel.add(this.onCancel);
         this.tyw();
         return;
      }

      private function tyw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.mynuroqyl)
         {
            this.view.initialize(this.model.mynuroqyl,this.config);
         }
         else
         {
            this.bap();
         }
         return;
      }

      private function bap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zunofi.davifuju.addOnce(this.hazoby);
         this.zunofi.start();
         return;
      }

      private function hazoby(param1:Bysyg, param2:Boolean, param3:String="") : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param2)
         {
            this.view.initialize(this.model.mynuroqyl,this.config);
         }
         else
         {
            this.naval.dispatch(new ErrorDialog("Unable to get gold offer information"));
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buyNow.add(this.tyzukid);
         this.view.cancel.add(this.onCancel);
         return;
      }

      protected function tyzukid(param1:Offer, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qiqely.info("offer {0}, paymentMethod {1}",[param1,param2]);
         this.bunumyzad.dispatch(param1,param2);
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