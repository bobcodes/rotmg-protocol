package mejowozy
{
[CLASS1408]   import com.company.assembleegameclient.objects.GameObject;


   public class Sur extends Ryf
   {
      public function Sur(param1:GameObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.go_=param1;
         this.legoqymyk=0;
         return;
      }

      public var go_:GameObject;

      public var legoqymyk:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:Qeg = null;
         if(this.go_.map_==null)
         {
            return false;
         }
         x_=this.go_.x_;
         y_=this.go_.y_;
         var _loc3_:int = param1-this.legoqymyk;
         if(_loc3_>500)
         {
            _loc4_=2*Math.PI*Math.random();
            _loc5_=(3+int(Math.random()*5))*20;
            _loc6_=0.3+0.4*Math.random();
            _loc7_=new Qeg(16777215,Math.random()*0.3,_loc5_,1000,0.1+Math.random()*0.1,this.go_,_loc4_,_loc6_);
            map_.addObj(_loc7_,x_+_loc6_*Math.cos(_loc4_),y_+_loc6_*Math.sin(_loc4_));
            this.legoqymyk=param1;
         }
         return true;
      }
   }
[/CLASS]
}