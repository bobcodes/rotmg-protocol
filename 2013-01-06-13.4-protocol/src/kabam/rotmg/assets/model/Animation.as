package kabam.rotmg.assets.model
{
[CLASS772]   import flash.display.Sprite;
   import flash.display.Bitmap;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.utils.Timer;
   import flash.events.TimerEvent;


   public class Animation extends Sprite
   {
      public function Animation() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const dukydeb:int = 200;

      private const nyjipamy:Bitmap = this.makeBitmap();

      private const jutijiwyn:Vector.<BitmapData> = new Vector.<BitmapData>(0);

      private const timer:Timer = this.syvere();

      private var hywopo:Boolean;

      private var index:int;

      private var count:uint;

      private var samewehyg:Boolean;

      private function makeBitmap() : Bitmap {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bitmap = new Bitmap();
         addChild(_loc1_);
         return _loc1_;
      }

      private function syvere() : Timer {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Timer = new Timer(this.dukydeb);
         _loc1_.addEventListener(TimerEvent.TIMER,this.mumapecon);
         return _loc1_;
      }

      public function zijiweb() : int {
         return this.timer.delay;
      }

      public function wule(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.timer.delay=param1;
         return;
      }

      public function hanyzuca(... rest) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:BitmapData = null;
         this.jutijiwyn.length=0;
         this.index=0;
         for each (_loc2_ in rest)
         {
            this.count=this.jutijiwyn.push(_loc2_);
         }
         if(this.hywopo)
         {
            this.start();
         }
         else
         {
            this.mumapecon();
         }
         return;
      }

      public function jedo(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.count=this.jutijiwyn.push(param1);
         return;
      }

      public function start() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.hywopo&&this.count>0)
         {
            this.timer.start();
            this.mumapecon();
         }
         this.hywopo=true;
         return;
      }

      public function stop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hywopo=false;
         return;
      }

      private function mumapecon(param1:TimerEvent=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.index=++this.index%this.count;
         this.nyjipamy.bitmapData=this.jutijiwyn[this.index];
         return;
      }

      public function dispose() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:BitmapData = null;
         this.samewehyg=true;
         this.stop();
         this.index=0;
         this.count=0;
         this.jutijiwyn.length=0;
         for each (_loc1_ in this.jutijiwyn)
         {
            _loc1_.dispose();
         }
         return;
      }

      public function dolyfoc() : Boolean {
         return this.hywopo;
      }

      public function pohamul() : Boolean {
         return this.samewehyg;
      }
   }
[/CLASS]
}