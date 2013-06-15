package pufupav
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Timer;
   import com.company.util.AssetLibrary;
   import com.company.util.Fufudol;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.TimerEvent;


   public class Lohanyruq extends Miwimemo
   {
      public function Lohanyruq(param1:GameObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.go=param1;
         if(param1.texture_.height==8)
         {
            this.cipug=0.4;
            this.gev=1.3;
            this.nokeseki=30;
         }
         else
         {
            this.cipug=0.7;
            this.gev=2;
            this.nokeseki=40;
         }
         return;
      }

      public static var mum:Vector.<BitmapData>;

      public var start_:Point;

      public var end_:Point;

      public var objectId:uint;

      public var go:GameObject;

      private var cipug:Number;

      private var gev:Number;

      private var hucosab:Number;

      private var nokeseki:uint;

      private var timer:Timer;

      private var kifefyp:Boolean = false;

      private function gepihyb() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:uint = 0;
         mum=new Vector.<BitmapData>();
         var _loc1_:Fufudol = AssetLibrary.bugu("lofiParticlesShocker");
         var _loc3_:uint = 9;
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            mum.push(TextureRedrawer.redraw(_loc1_.gisydi[_loc2_],this.nokeseki,true,0,0,true));
            _loc2_++;
         }
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.kifefyp)
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timer=new Timer(200,10);
         this.timer.addEventListener(TimerEvent.TIMER,this.pivaw);
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.rubozewo);
         this.timer.start();
         this.gepihyb();
         return;
      }

      private function pivaw(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(map_)
         {
            this.hucosab=int(Math.random()*360)*Math.PI/180;
            this.start_=new Point(this.go.x_+Math.sin(this.hucosab)*this.cipug,this.go.y_+Math.cos(this.hucosab)*this.cipug);
            this.end_=new Point(this.go.x_+Math.sin(this.hucosab)*this.gev,this.go.y_+Math.cos(this.hucosab)*this.gev);
            map_.addObj(new Zuj(this.objectId,25,this.nokeseki,this.start_,this.end_,this.hucosab,this.go,mum),this.start_.x,this.start_.y);
         }
         return;
      }

      private function rubozewo(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.destroy();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.timer)
         {
            this.timer.removeEventListener(TimerEvent.TIMER,this.pivaw);
            this.timer.removeEventListener(TimerEvent.TIMER,this.rubozewo);
            this.timer.stop();
            this.timer=null;
         }
         this.go=null;
         this.kifefyp=true;
         return;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.destroy();
         super.removeFromMap();
         return;
      }
   }

}