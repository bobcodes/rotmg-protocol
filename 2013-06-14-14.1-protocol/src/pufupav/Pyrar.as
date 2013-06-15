package pufupav
{
   import flash.geom.Point;
   import com.company.assembleegameclient.util.Kev;
   import com.company.assembleegameclient.objects.GameObject;
   import dasefezy.Rimukiz;


   public class Pyrar extends Miwimemo
   {
      public function Pyrar(param1:GameObject, param2:Rimukiz, param3:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.start_=new Point(param1.x_,param1.y_);
         this.end_=new Point(param2.x_,param2.y_);
         this.color_=param3;
         return;
      }

      public var start_:Point;

      public var end_:Point;

      public var color_:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:Point = null;
         var _loc6_:Particle = null;
         x_=this.start_.x;
         y_=this.start_.y;
         var _loc3_:* = 30;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=Point.interpolate(this.start_,this.end_,_loc4_/_loc3_);
            _loc6_=new Turyma(100,this.color_,700,0.5,Kev.lopiq(1),Kev.lopiq(1));
            map_.addObj(_loc6_,_loc5_.x,_loc5_.y);
            _loc4_++;
         }
         return false;
      }
   }

}