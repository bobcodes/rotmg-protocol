package mejowozy
{
[CLASS1703]   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Vector3D;


   public class Qeg extends Particle
   {
      public function Qeg(param1:uint, param2:Number, param3:int, param4:int, param5:Number, param6:GameObject, param7:Number, param8:Number) {
         var _loc9_:* = true;
         var _loc10_:* = false;
         this.moveVec_=new Vector3D();
         super(param1,param2,param3);
         this.moveVec_.z=param5;
         this.timeLeft_=param4;
         this.go_=param6;
         this.angle_=param7;
         this.letamof=param8;
         return;
      }

      public var timeLeft_:int;

      public var go_:GameObject;

      public var angle_:Number;

      public var letamof:Number;

      protected var moveVec_:Vector3D;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.timeLeft_=this.timeLeft_-param2;
         if(this.timeLeft_<=0)
         {
            return false;
         }
         x_=this.go_.x_+this.letamof*Math.cos(this.angle_);
         y_=this.go_.y_+this.letamof*Math.sin(this.angle_);
         z_=z_+this.moveVec_.z*param2*0.008;
         return true;
      }
   }
[/CLASS]
}