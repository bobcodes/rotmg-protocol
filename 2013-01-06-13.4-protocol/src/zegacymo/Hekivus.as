package zegacymo
{
[CLASS695]   import tysenyzy.Zovisis;
   import rysuho.Wovuru;
   import kirofyny.Hehuf;
   import dutes.Vyzynos;
   import syfuqycy.Motumeq;


   public class Hekivus extends Zovisis
   {
      public function Hekivus() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:WebForgotPasswordDialog;

      public var heq:Wovuru;

      public var lyhog:Hehuf;

      public var cas:Vyzynos;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.submit.add(this.furylutil);
         this.view.register.add(this.qare);
         this.view.cancel.add(this.onCancel);
         this.cas.add(this.tyziset);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.submit.remove(this.furylutil);
         this.view.register.remove(this.qare);
         this.view.cancel.remove(this.onCancel);
         this.cas.add(this.tyziset);
         return;
      }

      private function naduta() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.kiwimuj();
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.parent.removeChild(this.view);
         return;
      }

      private function furylutil(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.heq.dispatch(param1);
         return;
      }

      private function qare() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new Jugec());
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new WebLoginDialog());
         return;
      }

      private function tyziset(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.mede(param1.error);
         this.view.kiwimuj();
         return;
      }
   }
[/CLASS]
}