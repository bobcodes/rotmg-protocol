package pufupav
{
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import dasefezy.RotmgPoint;


   public class FlowEffect extends Miwimemo
   {
      public function FlowEffect(param1:RotmgPoint, param2:GameObject, param3:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.start_=new Point(param1.x_,param1.y_);
         this.go_=param2;
         this.color_=param3;
         return;
      }

      public var start_:Point;

      public var go_:GameObject;

      public var color_:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = 0;
         var _loc6_:Particle = null;
         x_=this.start_.x;
         y_=this.start_.y;
         var _loc3_:* = 5;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=(3+int(Math.random()*5))*20;
            _loc6_=new FlowParticle(0.5,_loc5_,this.color_,this.start_,this.go_);
            map_.addObj(_loc6_,x_,y_);
            _loc4_++;
         }
         return false;
      }
   }

}   import pufupav.Particle;
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;


   class FlowParticle extends Particle
   {
      function FlowParticle(param1:Number, param2:int, param3:int, param4:Point, param5:GameObject) {
         super(param3,param1,param2);
         this.start_=param4;
         this.go_=param5;
         var _loc6_:Point = new Point(x_,y_);
         var _loc7_:Point = new Point(this.go_.x_,this.go_.y_);
         this.maxDist_=Point.distance(_loc6_,_loc7_);
         this.flowSpeed_=Math.random()*5;
         return;
      }

      public var start_:Point;

      public var go_:GameObject;

      public var maxDist_:Number;

      public var flowSpeed_:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:Number = 8;
         var _loc4_:Point = new Point(x_,y_);
         var _loc5_:Point = new Point(this.go_.x_,this.go_.y_);
         var _loc6_:Number = Point.distance(_loc4_,_loc5_);
         if(_loc6_<0.5)
         {
            return false;
         }
         this.flowSpeed_=this.flowSpeed_+_loc3_*param2/1000;
         this.maxDist_=this.maxDist_-this.flowSpeed_*param2/1000;
         var _loc7_:Number = _loc6_-this.flowSpeed_*param2/1000;
         if(_loc7_>this.maxDist_)
         {
            _loc7_=this.maxDist_;
         }
         var _loc8_:Number = this.go_.x_-x_;
         var _loc9_:Number = this.go_.y_-y_;
         _loc8_=_loc8_*_loc7_/_loc6_;
         _loc9_=_loc9_*_loc7_/_loc6_;
         moveTo(this.go_.x_-_loc8_,this.go_.y_-_loc9_);
         return true;
      }
   }
   import pufupav.Particle;
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;


   class FlowParticle2 extends Particle
   {
      function FlowParticle2(param1:Number, param2:int, param3:int, param4:Number, param5:Point, param6:GameObject) {
         super(param3,param1,param2);
         this.start_=param5;
         this.go_=param6;
         this.accel_=param4;
         this.dx_=Math.random()-0.5;
         this.dy_=Math.random()-0.5;
         return;
      }

      public var start_:Point;

      public var go_:GameObject;

      public var accel_:Number;

      public var dx_:Number;

      public var dy_:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:Point = new Point(x_,y_);
         var _loc4_:Point = new Point(this.go_.x_,this.go_.y_);
         var _loc5_:Number = Point.distance(_loc3_,_loc4_);
         if(_loc5_<0.5)
         {
            return false;
         }
         var _loc6_:Number = Math.atan2(this.go_.y_-y_,this.go_.x_-x_);
         this.dx_=this.dx_+this.accel_*Math.cos(_loc6_)*param2/1000;
         this.dy_=this.dy_+this.accel_*Math.sin(_loc6_)*param2/1000;
         var _loc7_:Number = x_+this.dx_*param2/1000;
         var _loc8_:Number = y_+this.dy_*param2/1000;
         moveTo(_loc7_,_loc8_);
         return true;
      }
   }
