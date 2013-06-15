package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;


   public class Beliku extends Miwimemo
   {
      public function Beliku(param1:GameObject, param2:uint) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.go_=param1;
         this.color_=param2;
         return;
      }

      public var go_:GameObject;

      public var color_:uint;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:Vunesup = null;
         if(this.go_.map_==null)
         {
            return false;
         }
         x_=this.go_.x_;
         y_=this.go_.y_;
         var _loc3_:* = 10;
         var _loc4_:* = 0;
         while(true)
         {
            _loc5_=2*Math.PI*_loc4_/_loc3_;
            _loc6_=(3+int(Math.random()*5))*20;
            _loc7_=0.3+0.4*Math.random();
            _loc8_=new Vunesup(this.color_,Math.random()*0.3,_loc6_,1000,0.1+Math.random()*0.1,this.go_,_loc5_,_loc7_);
            map_.addObj(_loc8_,x_+_loc7_*Math.cos(_loc5_),y_+_loc7_*Math.sin(_loc5_));
            _loc4_++;
         }
      }
   }

}