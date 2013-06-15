package hupad
{
   import tytojonib.Kyjefe;
   import com.company.assembleegameclient.game.GameSprite;
   import lytu.Taboqid;
   import dicyl.Kumus;
   import wipivyv.Memysoh;
   import com.company.assembleegameclient.objects.Player;
   import flash.utils.Dictionary;


   public class Nojefeky extends Kyjefe
   {
      public function Nojefeky() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:GameSprite;

      public var zeqypavuj:Taboqid;

      public var zocezuzi:Kumus;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zeqypavuj.add(this.qybaqefev);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zeqypavuj.remove(this.qybaqefev);
         return;
      }

      private function qybaqefev(param1:Memysoh) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nymutucy();
         this.tezudud(param1);
         this.zocezuzi.dispatch(false);
         return;
      }

      private function nymutucy() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Player = this.view.map.player_;
         this.view.map.player_=null;
         return;
      }

      private function tezudud(param1:Memysoh) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dictionary = this.view.map.goDict_;
         return;
      }
   }

}