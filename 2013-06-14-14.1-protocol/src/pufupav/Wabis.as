package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Kev;


   public class Wabis extends Miwimemo
   {
      public function Wabis(param1:GameObject, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.go_=param1;
         this.color_=param2;
         return;
      }

      public var go_:GameObject;

      public var color_:int;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
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
            map_.addObj(new Turyma(100,this.color_,400,0.75,Kev.lopiq(4),Kev.lopiq(4)),x_,y_);
            _loc4_++;
         }
      }
   }

}