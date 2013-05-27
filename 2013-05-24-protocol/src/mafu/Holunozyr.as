package mafu
{
   import qov.Kalefu;
   import jiha.Rugivo;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import raqu.Zer;
   import vavufer.Bicowu;
   import gag.Bysyg;


   public class Holunozyr extends Kalefu
   {
      public function Holunozyr() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:WebLoginDialog;

      public var login:Rugivo;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      public var piv:Zer;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.signIn.add(this.kuwiw);
         this.view.register.add(this.cydypugoq);
         this.view.cancel.add(this.onCancel);
         this.view.forgot.add(this.judyq);
         this.piv.add(this.wasike);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.signIn.remove(this.kuwiw);
         this.view.register.remove(this.cydypugoq);
         this.view.cancel.remove(this.onCancel);
         this.view.forgot.remove(this.judyq);
         this.piv.remove(this.wasike);
         return;
      }

      private function kuwiw(param1:Bicowu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.disable();
         this.login.dispatch(param1);
         return;
      }

      private function cydypugoq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new Zad());
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tusagecu.dispatch();
         return;
      }

      private function judyq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naval.dispatch(new WebForgotPasswordDialog());
         return;
      }

      private function wasike(param1:Bysyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.hivuma(param1.error);
         this.view.pinyry();
         return;
      }
   }

}