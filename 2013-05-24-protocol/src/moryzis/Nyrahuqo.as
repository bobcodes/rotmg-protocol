package moryzis
{
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;


   public class Nyrahuqo extends Jil
   {
      public function Nyrahuqo(param1:GameObject, param2:Number, param3:int) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.start_=new Point(param1.x_,param1.y_);
         this.vysulyra=param2;
         this.color_=param3;
         return;
      }

      public var start_:Point;

      public var vysulyra:Number;

      public var color_:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc7_:* = NaN;
         var _loc8_:Point = null;
         var _loc9_:Particle = null;
         x_=this.start_.x;
         y_=this.start_.y;
         var _loc3_:* = 200;
         var _loc4_:* = 200;
         var _loc5_:int = 4+this.vysulyra*2;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_)
         {
            _loc7_=_loc6_*2*Math.PI/_loc5_;
            _loc8_=new Point(this.start_.x+this.vysulyra*Math.cos(_loc7_),this.start_.y+this.vysulyra*Math.sin(_loc7_));
            _loc9_=new Qyvahuh(_loc3_,this.color_,_loc4_,this.start_,_loc8_);
            map_.addObj(_loc9_,x_,y_);
            _loc6_++;
         }
         return false;
      }
   }

}