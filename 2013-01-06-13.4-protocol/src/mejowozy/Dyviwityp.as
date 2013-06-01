package mejowozy
{
[CLASS1500]   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Timer;
   import flash.events.TimerEvent;


   public class Dyviwityp extends Ryf
   {
      public function Dyviwityp(param1:GameObject, param2:uint) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.go=param1;
         this.dorus=Math.floor(param1.x_*10)/10;
         this.pykezob=Math.floor(param1.y_*10)/10;
         this.time=param2;
         this.zycupapyh();
         this.vozofity();
         return;
      }

      public var start_:Point;

      public var go:GameObject;

      private var dorus:Number;

      private var pykezob:Number;

      private var nek:ParticleField;

      private var time:uint;

      private var timer:Timer;

      private var zedecyqe:Boolean;

      private function zycupapyh() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:uint = this.go.texture_.height==8?50:30;
         this.timer=new Timer(_loc1_,Math.round(this.time/_loc1_));
         this.timer.addEventListener(TimerEvent.TIMER,this.weqyliga);
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.siwyzov);
         this.timer.start();
         return;
      }

      private function weqyliga(param1:TimerEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = Math.floor(this.go.x_*10)/10;
         var _loc3_:Number = Math.floor(this.go.y_*10)/10;
         if(!(this.dorus==_loc2_)||!(this.pykezob==_loc3_))
         {
            this.timer.stop();
            this.nek.destroy();
         }
         return;
      }

      private function siwyzov(param1:TimerEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.nek.destroy();
         var _loc2_:Timer = new Timer(33,12);
         _loc2_.addEventListener(TimerEvent.TIMER,this.sisisoba);
         _loc2_.start();
         return;
      }

      private function sisisoba(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zedecyqe=!this.zedecyqe;
         this.go.gymi(this.zedecyqe);
         return;
      }

      private function vozofity() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nek=new ParticleField(null,this.time,this.go.texture_.width,this.go.texture_.height);
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         map_.addObj(this.nek,this.go.x_,this.go.y_);
         return false;
      }
   }
[/CLASS]
}