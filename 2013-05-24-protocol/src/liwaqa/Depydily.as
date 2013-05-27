package liwaqa
{
   import qov.Kalefu;
   import wegyluke.Cowymute;


   public class Depydily extends Kalefu
   {
      public function Depydily() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Qazukifat;

      public var closeDialogs:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.add(this.pomuwok);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.remove(this.pomuwok);
         return;
      }

      private function pomuwok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}