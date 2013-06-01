package moryzis
{
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Hatuf;


   public class Bacupizit extends Jil
   {
      public function Bacupizit(param1:GameObject, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
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
         do
         {
            map_.addObj(new Lupu(100,this.color_,400,0.75,Hatuf.melemy(4),Hatuf.melemy(4)),x_,y_);
            _loc4_++;
            map_.addObj(new Lupu(100,this.color_,400,0.75,Hatuf.melemy(4),Hatuf.melemy(4)),x_,y_);
            _loc4_++;
         }
         while(true);
      }
   }

}