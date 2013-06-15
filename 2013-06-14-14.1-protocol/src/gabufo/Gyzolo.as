package gabufo
{
   import tytojonib.Kyjefe;
   import civino.Gypate;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import pomujukir.Doli;
   import cinyj.Vobewabij;
   import gycu.Cyqe;


   public class Gyzolo extends Kyjefe
   {
      public function Gyzolo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:WebLoginDialog;

      public var login:Gypate;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      public var wywyqicut:Doli;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.signIn.add(this.coriky);
         this.view.register.add(this.mijy);
         this.view.cancel.add(this.onCancel);
         this.view.forgot.add(this.pifozeb);
         this.wywyqicut.add(this.pidomim);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.signIn.remove(this.coriky);
         this.view.register.remove(this.mijy);
         this.view.cancel.remove(this.onCancel);
         this.view.forgot.remove(this.pifozeb);
         this.wywyqicut.remove(this.pidomim);
         return;
      }

      private function coriky(param1:Vobewabij) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.disable();
         this.login.dispatch(param1);
         return;
      }

      private function mijy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ridecy.dispatch(new Meqeguru());
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimenakal.dispatch();
         return;
      }

      private function pifozeb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new WebForgotPasswordDialog());
         return;
      }

      private function pidomim(param1:Cyqe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.nirin(param1.error);
         this.view.kafuwuge();
         return;
      }
   }

}