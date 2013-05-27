package moryzis
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Timer;
   import com.company.util.AssetLibrary;
   import com.company.util.Cetol;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.TimerEvent;


   public class Hetimyhel extends Jil
   {
      public function Hetimyhel(param1:GameObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.go=param1;
         if(param1.texture_.height==8)
         {
            this.jegyzy=0.4;
            this.qesoqohu=1.3;
            this.zoliqag=30;
         }
         else
         {
            this.jegyzy=0.7;
            this.qesoqohu=2;
            this.zoliqag=40;
         }
         return;
      }

      public static var pit:Vector.<BitmapData>;

      public var start_:Point;

      public var end_:Point;

      public var objectId:uint;

      public var go:GameObject;

      private var jegyzy:Number;

      private var qesoqohu:Number;

      private var gacymaji:Number;

      private var zoliqag:uint;

      private var timer:Timer;

      private var finag:Boolean = false;

      private function jefyziqi() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:uint = 0;
         pit=new Vector.<BitmapData>();
         var _loc1_:Cetol = AssetLibrary.watubaroh("lofiParticlesShocker");
         var _loc3_:uint = 9;
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            pit.push(TextureRedrawer.redraw(_loc1_.butymyres[_loc2_],this.zoliqag,true,0,0,true));
            _loc2_++;
         }
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.finag)
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
         this.timer.addEventListener(TimerEvent.TIMER,this.porykocaq);
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.dydosa);
         this.timer.start();
         this.jefyziqi();
         return;
      }

      private function porykocaq(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(map_)
         {
            this.gacymaji=int(Math.random()*360)*Math.PI/180;
            this.start_=new Point(this.go.x_+Math.sin(this.gacymaji)*this.jegyzy,this.go.y_+Math.cos(this.gacymaji)*this.jegyzy);
            this.end_=new Point(this.go.x_+Math.sin(this.gacymaji)*this.qesoqohu,this.go.y_+Math.cos(this.gacymaji)*this.qesoqohu);
            map_.addObj(new Rubemifi(this.objectId,25,this.zoliqag,this.start_,this.end_,this.gacymaji,this.go,pit),this.start_.x,this.start_.y);
         }
         return;
      }

      private function dydosa(param1:TimerEvent) : void {
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
            this.timer.removeEventListener(TimerEvent.TIMER,this.porykocaq);
            this.timer.removeEventListener(TimerEvent.TIMER,this.dydosa);
            this.timer.stop();
            this.timer=null;
         }
         this.go=null;
         this.finag=true;
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

}