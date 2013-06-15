package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Kev;


   public class Lyb extends Miwimemo
   {
      public function Lyb(param1:GameObject, param2:Tajy) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.go_=param1;
         this.color_=param2.color;
         this.rate=param2.rate;
         this.props=param2;
         return;
      }

      public var go_:GameObject;

      public var props:Tajy;

      public var color_:int;

      public var rate:Number;

      public var type:String;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Fesov = null;
         if(this.go_.map_==null)
         {
            return false;
         }
         x_=this.go_.x_;
         y_=this.go_.y_;
         var _loc3_:* = 20;
         var _loc4_:* = 0;
         while(_loc4_<this.rate)
         {
            _loc5_=(Math.random()+0.3)*200;
            _loc6_=Math.random();
            _loc7_=Kev.lopiq(this.props.speed-this.props.speed*_loc6_*(1-this.props.speedVariance));
            _loc8_=Kev.lopiq(this.props.speed-this.props.speed*_loc6_*(1-this.props.speedVariance));
            _loc9_=this.props.life*1000-this.props.life*1000*_loc6_*this.props.lifeVariance;
            _loc10_=new Fesov(_loc5_,this.color_,_loc9_,this.props.spread,0.75,_loc7_,_loc8_);
            map_.addObj(_loc10_,x_,y_);
            _loc4_++;
         }
         return true;
      }
   }

}