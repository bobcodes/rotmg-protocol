package ruwysepyd
{
   import qov.Kalefu;
   import aaa.rotmg.account.Account;
   import dopumitud.Kanyr;
   import wegyluke.Cowymute;
   import jiha.Hevorim;


   public class Fan extends Kalefu
   {
      public function Fan() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var zunofi:Kanyr;

      public var view:Zew;

      public var closeDialogs:Cowymute;

      public var biwihih:Hevorim;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zunofi.start();
         this.view.geziwyv.add(this.cowi);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.geziwyv.remove(this.cowi);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      public function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }

      public function cowi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.biwihih.dispatch();
         return;
      }
   }

}