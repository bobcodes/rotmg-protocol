package liwaqa
{
   import flash.display.Sprite;
   import flash.utils.Timer;
   import flash.display.BlendMode;
   import flash.events.Event;
   import flash.events.TimerEvent;


   public class Cyti extends Sprite
   {
      public function Cyti() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         x=y=this.radius;
         this.qohinep();
         addEventListener(Event.ADDED_TO_STAGE,this.dyl);
         addEventListener(Event.REMOVED_FROM_STAGE,this.paj);
         return;
      }

      private const modyzohuh:Sprite = this.bupu();

      private const fisaza:Sprite = this.juty();

      private const zususov:Sprite = this.zev();

      private const timer:Timer = new Timer(25);

      private const radius:int = 22;

      private const color:uint = 16777215;

      private function bupu() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = null;
         _loc1_=new Sprite();
         _loc1_.blendMode=BlendMode.LAYER;
         _loc1_.graphics.beginFill(this.color);
         _loc1_.graphics.drawCircle(0,0,this.radius);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function juty() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.blendMode=BlendMode.ERASE;
         _loc1_.graphics.beginFill(16777215*0.6);
         _loc1_.graphics.drawCircle(0,0,this.radius/2);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function zev() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(16777215);
         _loc1_.graphics.drawRect(0,0,this.radius,this.radius);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.modyzohuh.addChild(this.fisaza);
         this.modyzohuh.addChild(this.zususov);
         this.modyzohuh.mask=this.zususov;
         addChild(this.modyzohuh);
         return;
      }

      private function dyl(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.timer.addEventListener(TimerEvent.TIMER,this.nocupafa);
         this.timer.start();
         return;
      }

      private function paj(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.timer.stop();
         this.timer.removeEventListener(TimerEvent.TIMER,this.nocupafa);
         return;
      }

      private function nocupafa(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zususov.rotation=this.zususov.rotation+20;
         return;
      }
   }

}