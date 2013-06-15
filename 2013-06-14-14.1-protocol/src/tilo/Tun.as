package tilo
{
   import flash.display.Sprite;
   import flash.utils.Timer;
   import flash.display.BlendMode;
   import flash.events.Event;
   import flash.events.TimerEvent;


   public class Tun extends Sprite
   {
      public function Tun() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         x=y=this.radius;
         this.jifajenuj();
         addEventListener(Event.ADDED_TO_STAGE,this.wypyguzata);
         addEventListener(Event.REMOVED_FROM_STAGE,this.lydo);
         return;
      }

      private const gary:Sprite = this.fopizo();

      private const sisa:Sprite = this.tohevy();

      private const zadebo:Sprite = this.jydytymap();

      private const timer:Timer = new Timer(25);

      private const radius:int = 22;

      private const color:uint = 16777215;

      private function fopizo() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = null;
         _loc1_=new Sprite();
         _loc1_.blendMode=BlendMode.LAYER;
         _loc1_.graphics.beginFill(this.color);
         _loc1_.graphics.drawCircle(0,0,this.radius);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function tohevy() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.blendMode=BlendMode.ERASE;
         _loc1_.graphics.beginFill(16777215*0.6);
         _loc1_.graphics.drawCircle(0,0,this.radius/2);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function jydytymap() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(16777215);
         _loc1_.graphics.drawRect(0,0,this.radius,this.radius);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function jifajenuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gary.addChild(this.sisa);
         this.gary.addChild(this.zadebo);
         this.gary.mask=this.zadebo;
         addChild(this.gary);
         return;
      }

      private function wypyguzata(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.timer.addEventListener(TimerEvent.TIMER,this.duna);
         this.timer.start();
         return;
      }

      private function lydo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.timer.stop();
         this.timer.removeEventListener(TimerEvent.TIMER,this.duna);
         return;
      }

      private function duna(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zadebo.rotation=this.zadebo.rotation+20;
         return;
      }
   }

}