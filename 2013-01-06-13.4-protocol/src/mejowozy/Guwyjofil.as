package mejowozy
{
[CLASS1435]   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Wijawo;


   public class Guwyjofil extends Ryf
   {
      public function Guwyjofil(param1:GameObject, param2:int) {
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
         do
         {
            map_.addObj(new Teqymob(100,this.color_,400,0.75,Wijawo.belugo(4),Wijawo.belugo(4)),x_,y_);
            _loc4_++;
            map_.addObj(new Teqymob(100,this.color_,400,0.75,Wijawo.belugo(4),Wijawo.belugo(4)),x_,y_);
            _loc4_++;
         }
         while(true);
      }
   }
[/CLASS]
}