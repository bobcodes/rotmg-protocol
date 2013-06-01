package mejowozy
{
[CLASS1467]   import flash.geom.Point;


   public class ThrowEffect extends Ryf
   {
      public function ThrowEffect(param1:Point, param2:Point, param3:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.start_=param1;
         this.end_=param2;
         this.color_=param3;
         return;
      }

      public var start_:Point;

      public var end_:Point;

      public var color_:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         x_=this.start_.x;
         y_=this.start_.y;
         var _loc3_:* = 200;
         var _loc4_:ThrowParticle = new ThrowParticle(_loc3_,this.color_,1500,this.start_,this.end_);
         map_.addObj(_loc4_,x_,y_);
         return false;
      }
   }
[/CLASS]
}[CLASS1468]   import mejowozy.Particle;
   import flash.geom.Point;
   import mejowozy.Teqymob;
   import com.company.assembleegameclient.util.Wijawo;


   class ThrowParticle extends Particle
   {
      function ThrowParticle(param1:int, param2:int, param3:int, param4:Point, param5:Point) {
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
         this.timeLeft_=this.timeLeft_-param2;
         if(this.timeLeft_<=0)
         {
            return false;
         }
         z_=Math.sin(this.timeLeft_/this.lifetime_*Math.PI)*2;
         setSize(0);
         this.pathX_=this.pathX_+this.dx_*param2;
         this.pathY_=this.pathY_+this.dy_*param2;
         moveTo(this.pathX_,this.pathY_);
         map_.addObj(new Teqymob(100*(z_+1),color_,400,z_,Wijawo.belugo(1),Wijawo.belugo(1)),this.pathX_,this.pathY_);
         return true;
      }
   }
[/CLASS]