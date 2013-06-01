package cadawowy
{
   import qov.Kalefu;
   import gib.CreateGuildFrame;
   import wegyluke.Cowymute;


   public class Geko extends Kalefu
   {
      public function Geko() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CreateGuildFrame;

      public var tusagecu:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.add(this.onClose);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.remove(this.onClose);
         return;
      }

      private function onClose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tusagecu.dispatch();
         return;
      }
   }

}