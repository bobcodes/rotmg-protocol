package fefiw
{
[CLASS655]   import tysenyzy.Zovisis;
   import leselo.Account;
   import kirofyny.Tiqimav;


   public class Herifevyk extends Zovisis
   {
      public function Herifevyk() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var view:KabamAccountDetailDialog;

      public var madeve:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.hosinutow.add(this.kur);
         this.view.rewe(this.account.paweral());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hosinutow.remove(this.kur);
         return;
      }

      private function kur() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.madeve.dispatch();
         return;
      }
   }
[/CLASS]
}