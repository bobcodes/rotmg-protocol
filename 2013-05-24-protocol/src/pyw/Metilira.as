package pyw
{
   import qov.Kalefu;
   import com.company.assembleegameclient.game.GameSprite;
   import nyt.Dos;
   import zubamyki.Pagac;
   import quqe.Wupeb;
   import com.company.assembleegameclient.objects.Player;
   import flash.utils.Dictionary;


   public class Metilira extends Kalefu
   {
      public function Metilira() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:GameSprite;

      public var newiq:Dos;

      public var kag:Pagac;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.newiq.add(this.wajalu);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.newiq.remove(this.wajalu);
         return;
      }

      private function wajalu(param1:Wupeb) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cigyqazo();
         this.fesopepy(param1);
         this.kag.dispatch(false);
         return;
      }

      private function cigyqazo() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Player = this.view.map.player_;
         this.view.map.player_=null;
         return;
      }

      private function fesopepy(param1:Wupeb) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dictionary = this.view.map.goDict_;
         return;
      }
   }

}