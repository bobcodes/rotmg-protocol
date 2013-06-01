package mejowozy
{
[CLASS1492]

   public class TeleportEffect extends Ryf
   {
      public function TeleportEffect() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:TeleportParticle = null;
         var _loc3_:* = 20;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=2*Math.PI*Math.random();
            _loc6_=0.7*Math.random();
            _loc7_=500+1000*Math.random();
            _loc8_=new TeleportParticle(255,50,0.1,_loc7_);
            map_.addObj(_loc8_,x_+_loc6_*Math.cos(_loc5_),y_+_loc6_*Math.sin(_loc5_));
            _loc4_++;
         }
         return false;
      }
   }
[/CLASS]
}[CLASS1493]   import mejowozy.Particle;
   import flash.geom.Vector3D;


   class TeleportParticle extends Particle
   {
      function TeleportParticle(param1:uint, param2:int, param3:Number, param4:int) {
         this.moveVec_=new Vector3D();
         super(param1,0,param2);
         this.moveVec_.z=param3;
         this.timeLeft_=param4;
         return;
      }

      public var timeLeft_:int;

      protected var moveVec_:Vector3D;

      override public function update(param1:int, param2:int) : Boolean {
         this.timeLeft_=this.timeLeft_-param2;
         if(this.timeLeft_<=0)
         {
            return false;
         }
         z_=z_+this.moveVec_.z*param2*0.008;
         return true;
      }
   }
[/CLASS]