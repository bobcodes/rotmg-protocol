package mafu
{
   import qov.Kalefu;
   import wegyluke.Cowymute;
   import wegyluke.Hez;
   import jiha.Licar;
   import raqu.Zer;
   import zubamyki.Pagac;
   import vavufer.Bicowu;
   import gag.Bysyg;


   public class Jadosew extends Kalefu
   {
      public function Jadosew() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Zad;

      public var tusagecu:Cowymute;

      public var naval:Hez;

      public var register:Licar;

      public var pofoj:Zer;

      public var kag:Pagac;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.add(this.cydypugoq);
         this.view.signIn.add(this.kuwiw);
         this.view.cancel.add(this.onCancel);
         this.pofoj.add(this.vis);
         this.kag.dispatch(false);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.remove(this.cydypugoq);
         this.view.signIn.remove(this.kuwiw);
         this.view.cancel.remove(this.onCancel);
         this.pofoj.remove(this.vis);
         this.kag.dispatch(true);
         return;
      }

      private function cydypugoq(param1:Bicowu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.disable();
         this.register.dispatch(param1);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tusagecu.dispatch();
         return;
      }

      private function kuwiw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new WebLoginDialog());
         return;
      }

      private function vis(param1:Bysyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.luse(param1.error);
         this.view.pinyry();
         return;
      }
   }

}