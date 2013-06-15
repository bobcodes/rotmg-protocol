package gabufo
{
   import tytojonib.Kyjefe;
   import mokaq.Kybajuk;
   import cizagamym.Boquzojul;
   import pomujukir.Doli;
   import cinyj.Fycokyrub;
   import komi.Vibemod;
   import gycu.Cyqe;


   public class Rizusoko extends Kyjefe
   {
      public function Rizusoko() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:WebChangePasswordDialog;

      public var change:Kybajuk;

      public var ridecy:Boquzojul;

      public var wywyqicut:Doli;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.change.add(this.fuvare);
         this.view.cancel.add(this.onCancel);
         this.wywyqicut.add(this.vesajyj);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.change.remove(this.fuvare);
         this.view.cancel.remove(this.onCancel);
         this.wywyqicut.remove(this.vesajyj);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new WebAccountDetailDialog());
         return;
      }

      private function fuvare() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Fycokyrub = null;
         if((this.vihetip())&&(this.sopavuset())&&(this.dohamice()))
         {
            this.view.disable();
            _loc1_=new Fycokyrub();
            _loc1_.wote=this.view.password_.text();
            _loc1_.newPassword=this.view.jivutere.text();
            this.change.dispatch(_loc1_);
         }
         return;
      }

      private function vihetip() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.view.password_.text().length>=5;
         if(!_loc1_)
         {
            this.view.password_.nirin(Vibemod.gifuz);
         }
         return _loc1_;
      }

      private function sopavuset() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.view.jivutere.text().length>=5;
         if(!_loc1_)
         {
            this.view.jivutere.nirin(Vibemod.butos);
         }
         return _loc1_;
      }

      private function dohamice() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.view.jivutere.text()==this.view.sez.text();
         if(!_loc1_)
         {
            this.view.sez.nirin(Vibemod.pupoqyhi);
         }
         return _loc1_;
      }

      private function vesajyj(param1:Cyqe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.nirin(param1.error);
         this.view.kafuwuge();
         return;
      }
   }

}