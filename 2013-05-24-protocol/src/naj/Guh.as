package naj
{
   import qov.Kalefu;
   import ruwa.Account;
   import wegyluke.Cowymute;


   public class Guh extends Kalefu
   {
      public function Guh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var view:KabamAccountDetailDialog;

      public var tusagecu:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.gow.add(this.zun);
         this.view.tepefufe(this.account.nenyzeqe());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.gow.remove(this.zun);
         return;
      }

      private function zun() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tusagecu.dispatch();
         return;
      }
   }

}