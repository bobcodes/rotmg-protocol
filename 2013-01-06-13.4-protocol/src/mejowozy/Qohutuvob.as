package mejowozy
{
[CLASS1403]   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Timer;
   import com.company.util.AssetLibrary;
   import com.company.util.Zymusyhi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.TimerEvent;


   public class Qohutuvob extends Ryf
   {
      public function Qohutuvob(param1:GameObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.go=param1;
         if(param1.texture_.height==8)
         {
            this.sevypuh=0.4;
            this.fyhuvy=1.3;
            this.zycumyceb=30;
         }
         else
         {
            this.sevypuh=0.7;
            this.fyhuvy=2;
            this.zycumyceb=40;
         }
         return;
      }

      public static var sobygawo:Vector.<BitmapData>;

      public var start_:Point;

      public var end_:Point;

      public var objectId:uint;

      public var go:GameObject;

      private var sevypuh:Number;

      private var fyhuvy:Number;

      private var qawuh:Number;

      private var zycumyceb:uint;

      private var timer:Timer;

      private var medafit:Boolean = false;

      private function voguh() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:uint = 0;
         sobygawo=new Vector.<BitmapData>();
         var _loc1_:Zymusyhi = AssetLibrary.lodi("lofiParticlesShocker");
         var _loc3_:uint = 9;
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            sobygawo.push(TextureRedrawer.redraw(_loc1_.qulu[_loc2_],this.zycumyceb,true,0,0,true));
            _loc2_++;
         }
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.medafit)
         {
            return false;
         }
         if(!this.timer)
         {
            this.initialize();
         }
         x_=this.go.x_;
         y_=this.go.y_;
         return true;
      }

      private function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.timer=new Timer(200,10);
         this.timer.addEventListener(TimerEvent.TIMER,this.weqyliga);
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.wivygoni);
         this.timer.start();
         this.voguh();
         return;
      }

      private function weqyliga(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(map_)
         {
            this.qawuh=int(Math.random()*360)*Math.PI/180;
            this.start_=new Point(this.go.x_+Math.sin(this.qawuh)*this.sevypuh,this.go.y_+Math.cos(this.qawuh)*this.sevypuh);
            this.end_=new Point(this.go.x_+Math.sin(this.qawuh)*this.fyhuvy,this.go.y_+Math.cos(this.qawuh)*this.fyhuvy);
            map_.addObj(new Tebu(this.objectId,25,this.zycumyceb,this.start_,this.end_,this.qawuh,this.go,sobygawo),this.start_.x,this.start_.y);
         }
         return;
      }

      private function wivygoni(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.destroy();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.timer)
         {
            this.timer.removeEventListener(TimerEvent.TIMER,this.weqyliga);
            this.timer.removeEventListener(TimerEvent.TIMER,this.wivygoni);
            this.timer.stop();
            this.timer=null;
         }
         this.go=null;
         this.medafit=true;
         return;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.destroy();
         super.removeFromMap();
         return;
      }
   }
[/CLASS]
}