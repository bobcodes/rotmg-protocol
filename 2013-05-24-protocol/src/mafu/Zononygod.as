package mafu
{
   import qov.Kalefu;
   import aaa.rotmg.account.Account;
   import jiha.Qygubi;
   import wegyluke.Hez;


   public class Zononygod extends Kalefu
   {
      public function Zononygod() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Few;

      public var account:Account;

      public var logout:Qygubi;

      public var naval:Hez;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.login.add(this.wiv);
         this.view.register.add(this.cydypugoq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.login.remove(this.wiv);
         this.view.register.remove(this.cydypugoq);
         return;
      }

      private function cydypugoq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naval.dispatch(new Zad());
         return;
      }

      private function wiv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account.bugi())
         {
            this.fokenyw();
         }
         else
         {
            this.naval.dispatch(new WebLoginDialog());
         }
         return;
      }

      private function fokenyw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.logout.dispatch();
         this.view.tepefufe("",false);
         return;
      }
   }

}