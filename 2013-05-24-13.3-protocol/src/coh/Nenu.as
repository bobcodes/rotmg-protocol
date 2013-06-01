package coh
{
   import qov.Kalefu;
   import wegyluke.Cowymute;


   public class Nenu extends Kalefu
   {
      public function Nenu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Riqi;

      public var nipaj:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.siperu.addOnce(this.tusagecu);
         return;
      }

      private function tusagecu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nipaj.dispatch();
         return;
      }
   }

}