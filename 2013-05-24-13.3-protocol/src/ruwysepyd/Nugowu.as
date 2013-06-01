package ruwysepyd
{
   import qov.Kalefu;
   import jiha.Cemy;


   public class Nugowu extends Kalefu
   {
      public function Nugowu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ChooseNameRegisterDialog;

      public var rabizu:Cemy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.add(this.cydypugoq);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.remove(this.cydypugoq);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function cydypugoq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.onCancel();
         this.rabizu.dispatch();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.parent.removeChild(this.view);
         return;
      }
   }

}