package wade
{
[CLASS1466]   import mejowozy.Ryf;
   import flash.geom.Point;


   public class Haqikovu extends Ryf
   {
      public function Haqikovu(param1:int, param2:Point, param3:Point) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.start_=param2;
         this.end_=param3;
         this.id_=param1;
         return;
      }

      public var start_:Point;

      public var end_:Point;

      public var id_:uint;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         x_=this.start_.x;
         y_=this.start_.y;
         var _loc3_:* = 10000;
         var _loc4_:Vivituw = new Vivituw(this.id_,1500,this.start_,this.end_);
         map_.addObj(_loc4_,x_,y_);
         return false;
      }
   }
[/CLASS]
}