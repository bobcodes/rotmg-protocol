package pejycaj
{
   import tytojonib.Kyjefe;
   import cizagamym.Boquzojul;
   import flash.events.MouseEvent;


   public class Jowofidas extends Kyjefe
   {
      public function Jowofidas() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ArenaLeaderboardButton;

      public var ridecy:Boquzojul;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.addEventListener(MouseEvent.CLICK,this.guvidenip);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.removeEventListener(MouseEvent.CLICK,this.guvidenip);
         return;
      }

      private function guvidenip(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ridecy.dispatch(new ArenaLeaderboard());
         return;
      }
   }

}