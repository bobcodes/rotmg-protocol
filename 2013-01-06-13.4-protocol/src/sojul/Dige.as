package sojul
{
[CLASS467]   import tysenyzy.Zovisis;
   import leselo.Account;
   import rysuho.Zubusuge;


   public class Dige extends Zovisis
   {
      public function Dige() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var view:Jekoje;

      public var update:Zubusuge;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.rewe(this.account.paweral(),this.account.tuq());
         this.update.add(this.venisehi);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.update.remove(this.venisehi);
         return;
      }

      private function venisehi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.rewe(this.account.paweral(),this.account.tuq());
         return;
      }
   }
[/CLASS]
}