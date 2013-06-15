package pufupav
{
   import flash.geom.Point;
   import com.company.assembleegameclient.util.Kev;


   public class Zozy extends Particle
   {
      public function Zozy(param1:int, param2:int, param3:int, param4:Point, param5:Point) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         super(param2,0,param1);
         this.lifetime_=this.timeLeft_=param3;
         this.initialSize_=param1;
         this.start_=param4;
         this.end_=param5;
         this.dx_=(this.end_.x-this.start_.x)/this.timeLeft_;
         this.dy_=(this.end_.y-this.start_.y)/this.timeLeft_;
         var _loc6_:Number = Point.distance(param4,param5)/this.timeLeft_;
         this.pathX_=x_=this.start_.x;
         this.pathY_=y_=this.start_.y;
         return;
      }

      public var lifetime_:int;

      public var timeLeft_:int;

      public var initialSize_:int;

      public var start_:Point;

      public var end_:Point;

      public var dx_:Number;

      public var dy_:Number;

      public var pathX_:Number;

      public var pathY_:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.timeLeft_=this.timeLeft_-param2;
         if(this.timeLeft_<=0)
         {
            return false;
         }
         this.pathX_=this.pathX_+this.dx_*param2;
         this.pathY_=this.pathY_+this.dy_*param2;
         moveTo(this.pathX_,this.pathY_);
         map_.addObj(new Turyma(100*(z_+1),color_,600,z_,Kev.lopiq(1),Kev.lopiq(1)),this.pathX_,this.pathY_);
         return true;
      }
   }

}