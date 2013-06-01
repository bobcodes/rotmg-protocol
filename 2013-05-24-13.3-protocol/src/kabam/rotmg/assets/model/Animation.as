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
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const saba:int = 200;

      private const fod:Bitmap = this.makeBitmap();

      private const fivobep:Vector.<BitmapData> = new Vector.<BitmapData>(0);

      private const timer:Timer = this.vuwibyn();

      private var deruhidy:Boolean;

      private var index:int;

      private var count:uint;

      private var bodufow:Boolean;

      private function makeBitmap() : Bitmap {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bitmap = new Bitmap();
         addChild(_loc1_);
         return _loc1_;
      }

      private function vuwibyn() : Timer {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Timer = new Timer(this.saba);
         _loc1_.addEventListener(TimerEvent.TIMER,this.nuparive);
         return _loc1_;
      }

      public function kudu() : int {
         return this.timer.delay;
      }

      public function canybihel(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.timer.delay=param1;
         return;
      }

      public function mudoz(... rest) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:BitmapData = null;
         this.fivobep.length=0;
         this.index=0;
         for each (_loc2_ in rest)
         {
            this.count=this.fivobep.push(_loc2_);
         }
         if(this.deruhidy)
         {
            this.start();
         }
         else
         {
            this.nuparive();
         }
         return;
      }

      public function dyraci(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.count=this.fivobep.push(param1);
         return;
      }

      public function start() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.deruhidy&&this.count>0)
         {
            this.timer.start();
            this.nuparive();
         }
         this.deruhidy=true;
         return;
      }

      public function stop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.deruhidy=false;
         return;
      }

      private function nuparive(param1:TimerEvent=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.index=++this.index%this.count;
         this.fod.bitmapData=this.fivobep[this.index];
         return;
      }

      public function dispose() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:BitmapData = null;
         this.bodufow=true;
         this.stop();
         this.index=0;
         this.count=0;
         this.fivobep.length=0;
         for each (_loc1_ in this.fivobep)
         {
            _loc1_.dispose();
         }
         return;
      }

      public function cotiwipif() : Boolean {
         return this.deruhidy;
      }

      public function ciconimih() : Boolean {
         return this.bodufow;
      }
   }

}