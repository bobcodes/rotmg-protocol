package ruwysepyd
{
   import qov.Kalefu;
   import jiha.Cemy;
   import wegyluke.Cowymute;


   public class Kiti extends Kalefu
   {
      public function Kiti() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Byvomofy;

      public var rabizu:Cemy;

      public var close:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.cancel.add(this.onCancel);
         this.view.register.add(this.cydypugoq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cancel.remove(this.onCancel);
         this.view.register.remove(this.cydypugoq);
         return;
      }

      private function cydypugoq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rabizu.dispatch();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.close.dispatch();
         return;
      }
   }

}