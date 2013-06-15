package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;


   public class XMLEffect extends Miwimemo
   {
      public function XMLEffect(param1:GameObject, param2:Tajy) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.go_=param1;
         this.kybew=Vuqidytep.zupucuwum[param2.particle];
         this.navacut=param2.cooldown;
         this.jani=0.0;
         return;
      }

      private var go_:GameObject;

      private var kybew:Gunafi;

      private var navacut:Number;

      private var jani:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.go_.map_==null)
         {
            return false;
         }
         var _loc3_:Number = param2/1000;
         this.jani=this.jani-_loc3_;
         if(this.jani>=0)
         {
            return true;
         }
         this.jani=this.navacut;
         map_.addObj(new Nod(this.kybew),this.go_.x_,this.go_.y_);
         return true;
      }
   }

}