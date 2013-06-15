package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Tocaniw;


   public class FountainEffect extends Miwimemo
   {
      public function FountainEffect(param1:GameObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.go_=param1;
         return;
      }

      public var go_:GameObject;

      public var lastUpdate_:int = -1;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = 0;
         var _loc5_:FountainParticle = null;
         if(this.go_.map_==null)
         {
            return false;
         }
         if(this.lastUpdate_<0)
         {
            this.lastUpdate_=Math.max(0,param1-400);
         }
         x_=this.go_.x_;
         y_=this.go_.y_;
         var _loc3_:int = this.lastUpdate_/50;
         while(_loc3_<param1/50)
         {
            _loc4_=_loc3_*50;
            _loc5_=Tocaniw.dyzovot(FountainParticle) as FountainParticle;
            _loc5_.restart(_loc4_,param1);
            map_.addObj(_loc5_,x_,y_);
            _loc3_++;
         }
         this.lastUpdate_=param1;
         return true;
      }
   }

}   import pufupav.Particle;
   import flash.geom.Vector3D;
   import com.company.assembleegameclient.util.Tocaniw;


   class FountainParticle extends Particle
   {
      function FountainParticle() {
         this.moveVec_=new Vector3D();
         super(4285909,ZI,100);
         return;
      }

      private static const G:Number = -4.9;

      private static const VI:Number = 6.5;

      private static const ZI:Number = 0.75;

      public var startTime_:int;

      protected var moveVec_:Vector3D;

      public function restart(param1:int, param2:int) : void {
         var _loc4_:* = 0;
         var _loc3_:Number = 2*Math.PI*Math.random();
         this.moveVec_.x=Math.cos(_loc3_);
         this.moveVec_.y=Math.sin(_loc3_);
         this.startTime_=param1;
         _loc4_=param2-this.startTime_;
         x_=x_+this.moveVec_.x*_loc4_*8.0E-4;
         y_=y_+this.moveVec_.y*_loc4_*8.0E-4;
         var _loc5_:Number = (param2-this.startTime_)/1000;
         z_=0.75+VI*_loc5_+G*_loc5_*_loc5_;
         return;
      }

      override public function removeFromMap() : void {
         super.removeFromMap();
         Tocaniw.rilo(this);
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:Number = (param1-this.startTime_)/1000;
         moveTo(x_+this.moveVec_.x*param2*8.0E-4,y_+this.moveVec_.y*param2*8.0E-4);
         z_=0.75+VI*_loc3_+G*_loc3_*_loc3_;
         return z_>0.0;
      }
   }
