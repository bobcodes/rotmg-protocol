package pejycaj
{
   import tytojonib.Kyjefe;
   import cizagamym.Boquzojul;
   import fanij.Namejaja;
   import pugem.Account;
   import flash.events.MouseEvent;


   public class Mizywumy extends Kyjefe
   {
      public function Mizywumy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ArenaQueryPanel;

      public var ridecy:Boquzojul;

      public var buguzunag:Namejaja;

      public var account:Account;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zofolet();
         return;
      }

      private function zofolet() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.view.fur)
         {
            this.view.fur.addEventListener(MouseEvent.CLICK,this.qahe);
            this.view.dafutubi.addEventListener(MouseEvent.CLICK,this.nukylok);
         }
         else
         {
            this.view.dafutubi.addEventListener(MouseEvent.CLICK,this.nukylok);
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.destroy();
         return;
      }

      protected function nukylok(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ridecy.dispatch(new Mudosorug());
         return;
      }

      protected function qahe(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ridecy.dispatch(new ArenaLeaderboard());
         return;
      }
   }

}