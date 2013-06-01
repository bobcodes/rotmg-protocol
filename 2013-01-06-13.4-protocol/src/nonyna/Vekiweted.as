package nonyna
{
[CLASS76]   import tysenyzy.Zovisis;
   import sojul.MoneyFrame;
   import helepebas.Zedypina;
   import helepebas.Wewizy;
   import rysuho.Kojumu;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import vofepimy.Vofulofin;
   import bikyvym.Voduzak;
   import syfuqycy.Motumeq;
   import cejyva.ErrorDialog;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Vekiweted extends Zovisis
   {
      public function Vekiweted() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:MoneyFrame;

      public var model:Zedypina;

      public var config:Wewizy;

      public var keli:Kojumu;

      public var lyhog:Hehuf;

      public var closeDialogs:Tiqimav;

      public var mepuwyb:Vofulofin;

      public var wop:Voduzak;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buyNow.add(this.wiwiloquv);
         this.view.cancel.add(this.onCancel);
         this.citepojov();
         return;
      }

      private function citepojov() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.cok)
         {
            this.view.initialize(this.model.cok,this.config);
         }
         else
         {
            this.goly();
         }
         return;
      }

      private function goly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mepuwyb.gegyco.addOnce(this.hepe);
         this.mepuwyb.start();
         return;
      }

      private function hepe(param1:Motumeq, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param2)
         {
            this.view.initialize(this.model.cok,this.config);
         }
         else
         {
            this.lyhog.dispatch(new ErrorDialog("Unable to get gold offer information"));
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.buyNow.add(this.wiwiloquv);
         this.view.cancel.add(this.onCancel);
         return;
      }

      protected function wiwiloquv(param1:Offer, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wop.info("offer {0}, paymentMethod {1}",[param1,param2]);
         this.keli.dispatch(param1,param2);
         return;
      }

      protected function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}