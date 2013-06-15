package gabufo
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import pomujukir.Cuqoseze;
   import civino.Zemezuzag;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import civino.Posobew;
   import suzen.Kodufanin;


   public class Tukog extends Kyjefe
   {
      public function Tukog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:WebAccountDetailDialog;

      public var account:Account;

      public var taja:Cuqoseze;

      public var verify:Zemezuzag;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      public var vuf:Posobew;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.fefag(this.account.dodet(),this.account.mupycoper());
         this.view.change.add(this.fuvare);
         this.view.logout.add(this.gucug);
         this.view.cancel.add(this.vum);
         this.view.verify.add(this.budadyjys);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.change.remove(this.fuvare);
         this.view.logout.remove(this.gucug);
         this.view.cancel.remove(this.vum);
         this.view.verify.remove(this.budadyjys);
         return;
      }

      private function fuvare() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new WebChangePasswordDialog());
         return;
      }

      private function gucug() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wutegubav();
         this.account.clear();
         this.vuf.dispatch();
         this.ridecy.dispatch(new WebLoginDialog());
         return;
      }

      private function wutegubav() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="account";
         _loc1_.hukepej="loggedOut";
         this.taja.dispatch(_loc1_);
         return;
      }

      private function vum() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimenakal.dispatch();
         return;
      }

      private function budadyjys() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.verify.dispatch();
         return;
      }
   }

}