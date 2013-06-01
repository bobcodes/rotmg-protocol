package zegacymo
{
[CLASS679]   import tysenyzy.Zovisis;
   import rysuho.Nyzeveju;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import dutes.Vyzynos;
   import kyhawibyc.Fapu;
   import syfuqycy.Motumeq;


   public class Tunaso extends Zovisis
   {
      public function Tunaso() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:WebLoginDialog;

      public var login:Nyzeveju;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      public var fasefesak:Vyzynos;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.signIn.add(this.fakiweb);
         this.view.register.add(this.qare);
         this.view.cancel.add(this.onCancel);
         this.view.forgot.add(this.pecanoba);
         this.fasefesak.add(this.davil);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.signIn.remove(this.fakiweb);
         this.view.register.remove(this.qare);
         this.view.cancel.remove(this.onCancel);
         this.view.forgot.remove(this.pecanoba);
         this.fasefesak.remove(this.davil);
         return;
      }

      private function fakiweb(param1:Fapu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.disable();
         this.login.dispatch(param1);
         return;
      }

      private function qare() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new Jugec());
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.madeve.dispatch();
         return;
      }

      private function pecanoba() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new WebForgotPasswordDialog());
         return;
      }

      private function davil(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.famugujo(param1.error);
         this.view.kiwimuj();
         return;
      }
   }
[/CLASS]
}