package moryzis
{
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import cypujavop.Wakudava;


   public class Kyjeliby extends Jil
   {
      public function Kyjeliby(param1:GameObject, param2:Wakudava, param3:Wakudava, param4:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
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
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc8_:* = NaN;
         var _loc9_:Point = null;
         var _loc10_:Particle = null;
         x_=this.center_.x;
         y_=this.center_.y;
         var _loc3_:Number = Point.distance(this.center_,this.zeb);
         var _loc4_:* = 300;
         var _loc5_:* = 200;
         var _loc6_:* = 24;
         var _loc7_:* = 0;
         while(_loc7_<_loc6_)
         {
            _loc8_=_loc7_*2*Math.PI/_loc6_;
            _loc9_=new Point(this.center_.x+_loc3_*Math.cos(_loc8_),this.center_.y+_loc3_*Math.sin(_loc8_));
            _loc10_=new Qyvahuh(_loc4_,this.color_,_loc5_,_loc9_,this.center_);
            map_.addObj(_loc10_,x_,y_);
            _loc7_++;
         }
         return false;
      }
   }

}