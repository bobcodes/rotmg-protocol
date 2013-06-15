package pufupav
{
   import __AS3__.vec.Vector;


   public class ExplosionEffect extends Miwimemo
   {
      public function ExplosionEffect(param1:Vector.<uint>, param2:int, param3:int) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.humyfekiw=param1;
         size_=param2;
         this.cymusyky=param3;
         return;
      }

      public var humyfekiw:Vector.<uint>;

      public var cymusyky:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:uint = 0;
         var _loc5_:Particle = null;
         if(this.humyfekiw.length==0)
         {
            return false;
         }
         var _loc3_:* = 0;
         while(_loc3_<this.cymusyky)
         {
            _loc4_=this.humyfekiw[int(this.humyfekiw.length*Math.random())];
            _loc5_=new ExplosionParticle(_loc4_,0.5,size_,200+Math.random()*100,Math.random()-0.5,Math.random()-0.5,0);
            map_.addObj(_loc5_,x_,y_);
            _loc3_++;
         }
         return false;
      }
   }

}   import pufupav.Particle;
   import flash.geom.Vector3D;


   class ExplosionParticle extends Particle
   {
      function ExplosionParticle(param1:uint, param2:Number, param3:int, param4:int, param5:Number, param6:Number, param7:Number) {
         this.moveVec_=new Vector3D();
         super(param1,param2,param3);
         this.timeLeft_=this.lifetime_=param4;
         this.moveVec_.x=param5;
         this.moveVec_.y=param6;
         this.moveVec_.z=param7;
         return;
      }

      public var lifetime_:int;

      public var timeLeft_:int;

      protected var moveVec_:Vector3D;

      override public function update(param1:int, param2:int) : Boolean {
         this.timeLeft_=this.timeLeft_-param2;
         if(this.timeLeft_<=0)
         {
            return false;
         }
         x_=x_+this.moveVec_.x*param2*0.008;
         y_=y_+this.moveVec_.y*param2*0.008;
         z_=z_+this.moveVec_.z*param2*0.008;
         return true;
      }
   }
