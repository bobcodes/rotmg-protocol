package gabufo
{
   import tytojonib.Kyjefe;
   import civino.Pajenosok;
   import cizagamym.Boquzojul;
   import pomujukir.Doli;
   import gycu.Cyqe;


   public class Zosiniz extends Kyjefe
   {
      public function Zosiniz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:WebForgotPasswordDialog;

      public var tyzopo:Pajenosok;

      public var ridecy:Boquzojul;

      public var zijorusyb:Doli;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.submit.add(this.puduluzu);
         this.view.register.add(this.mijy);
         this.view.cancel.add(this.onCancel);
         this.zijorusyb.add(this.gageby);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.submit.remove(this.puduluzu);
         this.view.register.remove(this.mijy);
         this.view.cancel.remove(this.onCancel);
         this.zijorusyb.add(this.gageby);
         return;
      }

      private function lak() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.kafuwuge();
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.parent.removeChild(this.view);
         return;
      }

      private function puduluzu(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tyzopo.dispatch(param1);
         return;
      }

      private function mijy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new Meqeguru());
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new WebLoginDialog());
         return;
      }

      private function gageby(param1:Cyqe) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.cedocy(param1.error);
         this.view.kafuwuge();
         return;
      }
   }

}