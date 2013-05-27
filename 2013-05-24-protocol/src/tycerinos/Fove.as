package tycerinos
{
   import qov.Kalefu;
   import kat.RegisterWebAccountDialog;
   import jiha.Diqyc;
   import wegyluke.Cowymute;
   import vavufer.Bicowu;


   public class Fove extends Kalefu
   {
      public function Fove() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:RegisterWebAccountDialog;

      public var register:Diqyc;

      public var kezubydur:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.add(this.cydypugoq);
         this.view.cancel.add(this.onClose);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.remove(this.cydypugoq);
         return;
      }

      private function cydypugoq(param1:Bicowu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.register.dispatch(param1);
         return;
      }

      private function onClose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kezubydur.dispatch();
         return;
      }
   }

}