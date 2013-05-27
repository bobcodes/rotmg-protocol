package mafu
{
   import qov.Kalefu;
   import jiha.Suvy;
   import wegyluke.Hez;
   import raqu.Zer;
   import gag.Bysyg;


   public class Bitali extends Kalefu
   {
      public function Bitali() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:WebForgotPasswordDialog;

      public var zyfebo:Suvy;

      public var naval:Hez;

      public var zotoci:Zer;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.submit.add(this.penul);
         this.view.register.add(this.cydypugoq);
         this.view.cancel.add(this.onCancel);
         this.zotoci.add(this.dizak);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.submit.remove(this.penul);
         this.view.register.remove(this.cydypugoq);
         this.view.cancel.remove(this.onCancel);
         this.zotoci.add(this.dizak);
         return;
      }

      private function jibuqi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pinyry();
         return;
      }

      private function onClose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.parent.removeChild(this.view);
         return;
      }

      private function penul(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zyfebo.dispatch(param1);
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
         this.naval.dispatch(new WebLoginDialog());
         return;
      }

      private function dizak(param1:Bysyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.vukukyso(param1.error);
         this.view.pinyry();
         return;
      }
   }

}