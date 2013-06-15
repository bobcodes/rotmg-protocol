package kabam.rotmg.assets.model
{
   import flash.display.Sprite;
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

      private const qiwe:int = 200;

      private const vuc:Bitmap = this.makeBitmap();

      private const gasycal:Vector.<BitmapData> = new Vector.<BitmapData>(0);

      private const timer:Timer = this.qezegazit();

      private var zit:Boolean;

      private var index:int;

      private var count:uint;

      private var dep:Boolean;

      private function makeBitmap() : Bitmap {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bitmap = new Bitmap();
         addChild(_loc1_);
         return _loc1_;
      }

      private function qezegazit() : Timer {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Timer = new Timer(this.qiwe);
         _loc1_.addEventListener(TimerEvent.TIMER,this.dereponab);
         return _loc1_;
      }

      public function wudyzu() : int {
         return this.timer.delay;
      }

      public function kasenom(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.timer.delay=param1;
         return;
      }

      public function tila(... rest) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:BitmapData = null;
         this.gasycal.length=0;
         this.index=0;
         for each (_loc2_ in rest)
         {
            this.count=this.gasycal.push(_loc2_);
         }
         if(this.zit)
         {
            this.start();
         }
         else
         {
            this.dereponab();
         }
         return;
      }

      public function laguwejy(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.count=this.gasycal.push(param1);
         return;
      }

      public function start() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.zit&&this.count>0)
         {
            this.timer.start();
            this.dereponab();
         }
         this.zit=true;
         return;
      }

      public function stop() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zit=false;
         return;
      }

      private function dereponab(param1:TimerEvent=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.index=++this.index%this.count;
         this.vuc.bitmapData=this.gasycal[this.index];
         return;
      }

      public function dispose() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:BitmapData = null;
         this.dep=true;
         this.stop();
         this.index=0;
         this.count=0;
         this.gasycal.length=0;
         for each (_loc1_ in this.gasycal)
         {
            _loc1_.dispose();
         }
         return;
      }

      public function wowof() : Boolean {
         return this.zit;
      }

      public function qefaseci() : Boolean {
         return this.dep;
      }
   }

}