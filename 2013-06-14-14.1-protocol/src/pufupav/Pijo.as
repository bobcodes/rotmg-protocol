package pufupav
{
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Timer;
   import flash.events.TimerEvent;


   public class Pijo extends Miwimemo
   {
      public function Pijo(param1:GameObject, param2:uint) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.go=param1;
         this.gelet=Math.floor(param1.x_*10)/10;
         this.buhuhi=Math.floor(param1.y_*10)/10;
         this.time=param2;
         this.vulin();
         this.mot();
         return;
      }

      public var start_:Point;

      public var go:GameObject;

      private var gelet:Number;

      private var buhuhi:Number;

      private var qorut:ParticleField;

      private var time:uint;

      private var timer:Timer;

      private var gece:Boolean;

      private function vulin() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:uint = this.go.texture_.height==8?50:30;
         this.timer=new Timer(_loc1_,Math.round(this.time/_loc1_));
         this.timer.addEventListener(TimerEvent.TIMER,this.pivaw);
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.beha);
         this.timer.start();
         return;
      }

      private function pivaw(param1:TimerEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Number = Math.floor(this.go.x_*10)/10;
         var _loc3_:Number = Math.floor(this.go.y_*10)/10;
         if(!(this.gelet==_loc2_)||!(this.buhuhi==_loc3_))
         {
            this.timer.stop();
            this.qorut.destroy();
         }
         return;
      }

      private function beha(param1:TimerEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qorut.destroy();
         var _loc2_:Timer = new Timer(33,12);
         _loc2_.addEventListener(TimerEvent.TIMER,this.feri);
         _loc2_.start();
         return;
      }

      private function feri(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gece=!this.gece;
         this.go.bubot(this.gece);
         return;
      }

      private function mot() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qorut=new ParticleField(null,this.time,this.go.texture_.width,this.go.texture_.height);
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         map_.addObj(this.qorut,this.go.x_,this.go.y_);
         return false;
      }
   }

}