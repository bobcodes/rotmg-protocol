package pejycaj
{
   import tytojonib.Kyjefe;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import wahyqise.Tuco;
   import flash.display.Sprite;


   public class Fefomen extends Kyjefe
   {
      public function Fefomen() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ArenaLeaderboardListItem;

      public var qotufofa:Cirumy;

      public var zawowyn:Boqutujy;

      public var nuzomit:Tuco;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.qotufofa.add(this.rujimocet);
         this.view.hideTooltip.add(this.bywowyke);
         this.view.debezysog=this.nuzomit.player.name_;
         this.view.setColor();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.qotufofa.remove(this.rujimocet);
         this.view.hideTooltip.remove(this.bywowyke);
         return;
      }

      private function rujimocet(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qotufofa.dispatch(param1);
         return;
      }

      private function bywowyke() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zawowyn.dispatch();
         return;
      }
   }

}