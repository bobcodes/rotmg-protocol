package pejycaj
{
   import tytojonib.Kyjefe;
   import tezahusaq.Hyqosadu;
   import wohy.Segeqofi;
   import wohy.Luz;
   import cizagamym.Boquzojul;
   import flash.utils.Timer;
   import wohy.Caki;
   import flash.events.TimerEvent;


   public class Sozapezy extends Kyjefe
   {
      public function Sozapezy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqebomo=new Timer(800,1);
         super();
         return;
      }

      public var view:BattleSummaryDialog;

      public var jyhi:Hyqosadu;

      public var lohe:Segeqofi;

      public var vyg:Luz;

      public var ridecy:Boquzojul;

      private var viqebomo:Timer;

      override public function initialize() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.view.visible=false;
         this.view.kyri();
         this.view.myky(this.lohe.vegyq.pig,this.lohe.vegyq.rygy);
         var _loc1_:Boolean = this.vyg.vegyq.pig>this.lohe.vegyq.pig||this.vyg.vegyq.pig==this.lohe.vegyq.pig&&this.vyg.vegyq.rygy<this.lohe.vegyq.rygy;
         var _loc2_:Caki = _loc1_?this.vyg.vegyq:this.lohe.vegyq;
         this.view.moludi(_loc2_.pig,_loc2_.rygy);
         this.view.close.add(this.lyb);
         this.jyhi.addOnce(this.zuvod);
         return;
      }

      private function lyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new ArenaLeaderboard());
         return;
      }

      private function zuvod() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqebomo.addEventListener(TimerEvent.TIMER,this.puru);
         this.viqebomo.start();
         return;
      }

      private function puru(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.viqebomo.removeEventListener(TimerEvent.TIMER,this.puru);
         this.view.visible=true;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.remove(this.lyb);
         return;
      }
   }

}