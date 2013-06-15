package gabufo
{
   import tytojonib.Kyjefe;
   import cizagamym.Lebovas;
   import cizagamym.Boquzojul;
   import civino.Pycezur;
   import pomujukir.Doli;
   import dicyl.Kumus;
   import cinyj.Vobewabij;
   import gycu.Cyqe;


   public class Noly extends Kyjefe
   {
      public function Noly() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Meqeguru;

      public var gimenakal:Lebovas;

      public var ridecy:Boquzojul;

      public var register:Pycezur;

      public var dehar:Doli;

      public var zocezuzi:Kumus;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.add(this.mijy);
         this.view.signIn.add(this.coriky);
         this.view.cancel.add(this.onCancel);
         this.dehar.add(this.mef);
         this.zocezuzi.dispatch(false);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.remove(this.mijy);
         this.view.signIn.remove(this.coriky);
         this.view.cancel.remove(this.onCancel);
         this.dehar.remove(this.mef);
         this.zocezuzi.dispatch(true);
         return;
      }

      private function mijy(param1:Vobewabij) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.disable();
         this.register.dispatch(param1);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimenakal.dispatch();
         return;
      }

      private function coriky() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new WebLoginDialog());
         return;
      }

      private function mef(param1:Cyqe) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.vabuleku(param1.error);
         this.view.kafuwuge();
         return;
      }
   }

}