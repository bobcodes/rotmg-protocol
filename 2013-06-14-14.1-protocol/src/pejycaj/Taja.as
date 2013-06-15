package pejycaj
{
   import tytojonib.Kyjefe;
   import ginuly.Sywuvuzug;
   import ginuly.Rod;
   import flash.utils.Timer;
   import flash.events.TimerEvent;


   public class Taja extends Kyjefe
   {
      public function Taja() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.domypoza=new Timer(6000);
         super();
         return;
      }

      public var view:Sihetyta;

      public var rofoq:Sywuvuzug;

      public var bovyhy:Rod;

      private var domypoza:Timer;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rofoq.add(this.goquzu);
         this.bovyhy.add(this.falozit);
         this.domypoza.addEventListener(TimerEvent.TIMER,this.kik);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rofoq.remove(this.goquzu);
         this.bovyhy.remove(this.falozit);
         this.view.stop();
         return;
      }

      private function falozit() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.stop();
         return;
      }

      private function kik(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.domypoza.stop();
         this.view.start();
         this.view.x=300-this.view.width/2;
         return;
      }

      private function goquzu(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.domypoza.start();
         this.view.stop();
         return;
      }
   }

}