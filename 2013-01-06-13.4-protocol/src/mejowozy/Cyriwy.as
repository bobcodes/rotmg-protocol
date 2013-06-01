package mejowozy
{
[CLASS1491]   import flash.geom.Point;
   import jyz.Tyji;
   import com.company.assembleegameclient.objects.GameObject;


   public class Cyriwy extends Ryf
   {
      public function Cyriwy(param1:GameObject, param2:Tyji, param3:Number, param4:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.start_=new Point(param1.x_,param1.y_);
         this.moco=param2;
         this.zudizyqe=param3;
         this.color_=param4;
         return;
      }

      public var start_:Point;

      public var moco:Tyji;

      public var zudizyqe:Number;

      public var color_:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc9_:* = NaN;
         var _loc10_:Point = null;
         var _loc11_:Particle = null;
         x_=this.start_.x;
         y_=this.start_.y;
         var _loc3_:* = 200;
         var _loc4_:* = 100;
         var _loc5_:Number = Math.PI/3;
         var _loc6_:* = 7;
         var _loc7_:Number = Math.atan2(this.moco.y_-this.start_.y,this.moco.x_-this.start_.x);
         var _loc8_:* = 0;
         while(_loc8_<_loc6_)
         {
            _loc9_=_loc7_-_loc5_/2+_loc8_*_loc5_/_loc6_;
            _loc10_=new Point(this.start_.x+this.zudizyqe*Math.cos(_loc9_),this.start_.y+this.zudizyqe*Math.sin(_loc9_));
            _loc11_=new Gasomyro(_loc3_,this.color_,_loc4_,this.start_,_loc10_);
            map_.addObj(_loc11_,x_,y_);
            _loc8_++;
         }
         return false;
      }
   }
[/CLASS]
}