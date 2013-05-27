package moryzis
{
   import flash.geom.Point;
   import com.company.assembleegameclient.util.Hatuf;
   import com.company.assembleegameclient.objects.GameObject;
   import cypujavop.Wakudava;


   public class Jyvycup extends Jil
   {
      public function Jyvycup(param1:GameObject, param2:Wakudava, param3:int, param4:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.start_=new Point(param1.x_,param1.y_);
         this.end_=new Point(param2.x_,param2.y_);
         this.color_=param3;
         this.qifeho=param4;
         return;
      }

      public var start_:Point;

      public var end_:Point;

      public var color_:int;

      public var qifeho:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:Point = null;
         var _loc7_:Particle = null;
         var _loc8_:* = NaN;
         x_=this.start_.x;
         y_=this.start_.y;
         var _loc3_:Number = Point.distance(this.start_,this.end_);
         var _loc4_:int = _loc3_*3;
         var _loc5_:* = 0;
         while(_loc5_<_loc4_)
         {
            _loc6_=Point.interpolate(this.start_,this.end_,_loc5_/_loc4_);
            _loc7_=new Lupu(this.qifeho,this.color_,1000-_loc5_/_loc4_*900,0.5,0,0);
            _loc8_=Math.min(_loc5_,_loc4_-_loc5_);
            map_.addObj(_loc7_,_loc6_.x+Hatuf.melemy(_loc3_/200*_loc8_),_loc6_.y+Hatuf.melemy(_loc3_/200*_loc8_));
            _loc5_++;
         }
         return false;
      }
   }

}