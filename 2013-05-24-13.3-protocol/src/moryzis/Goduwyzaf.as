package moryzis
{
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import cypujavop.Wakudava;


   public class Goduwyzaf extends Jil
   {
      public function Goduwyzaf(param1:GameObject, param2:Wakudava, param3:Wakudava, param4:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.center_=new Point(param2.x_,param2.y_);
         this.zeb=new Point(param3.x_,param3.y_);
         this.color_=param4;
         return;
      }

      public var center_:Point;

      public var zeb:Point;

      public var color_:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:* = NaN;
         var _loc8_:Point = null;
         var _loc9_:Particle = null;
         x_=this.center_.x;
         y_=this.center_.y;
         var _loc3_:Number = Point.distance(this.center_,this.zeb);
         var _loc4_:* = 100;
         var _loc5_:* = 24;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_)
         {
            _loc7_=_loc6_*2*Math.PI/_loc5_;
            _loc8_=new Point(this.center_.x+_loc3_*Math.cos(_loc7_),this.center_.y+_loc3_*Math.sin(_loc7_));
            _loc9_=new Qyvahuh(_loc4_,this.color_,100+Math.random()*200,this.center_,_loc8_);
            map_.addObj(_loc9_,x_,y_);
            _loc6_++;
         }
         return false;
      }
   }

}