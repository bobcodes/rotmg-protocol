package moryzis
{
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Timer;
   import flash.events.TimerEvent;


   public class Hefu extends Jil
   {
      public function Hefu(param1:GameObject, param2:uint) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.go=param1;
         this.jadysur=Math.floor(param1.x_*10)/10;
         this.vapab=Math.floor(param1.y_*10)/10;
         this.time=param2;
         this.quwimezu();
         this.pid();
         return;
      }

      public var start_:Point;

      public var go:GameObject;

      private var jadysur:Number;

      private var vapab:Number;

      private var zacirozam:ParticleField;

      private var time:uint;

      private var timer:Timer;

      private var tapi:Boolean;

      private function quwimezu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:uint = this.go.texture_.height==8?50:30;
         this.timer=new Timer(_loc1_,Math.round(this.time/_loc1_));
         this.timer.addEventListener(TimerEvent.TIMER,this.porykocaq);
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.hekez);
         this.timer.start();
         return;
      }

      private function porykocaq(param1:TimerEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = Math.floor(this.go.x_*10)/10;
         var _loc3_:Number = Math.floor(this.go.y_*10)/10;
         if(!(this.jadysur==_loc2_)||!(this.vapab==_loc3_))
         {
            this.timer.stop();
            this.zacirozam.destroy();
         }
         return;
      }

      private function hekez(param1:TimerEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zacirozam.destroy();
         var _loc2_:Timer = new Timer(33,12);
         _loc2_.addEventListener(TimerEvent.TIMER,this.nymuz);
         _loc2_.start();
         return;
      }

      private function nymuz(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tapi=!this.tapi;
         this.go.rogoj(this.tapi);
         return;
      }

      private function pid() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zacirozam=new ParticleField(null,this.time,this.go.texture_.width,this.go.texture_.height);
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         map_.addObj(this.zacirozam,this.go.x_,this.go.y_);
         return false;
      }
   }

}