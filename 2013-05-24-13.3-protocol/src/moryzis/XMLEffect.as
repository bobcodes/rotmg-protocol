package moryzis
{
   import com.company.assembleegameclient.objects.GameObject;


   public class XMLEffect extends Jil
   {
      public function XMLEffect(param1:GameObject, param2:Baly) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.go_=param1;
         this.noze=Jona.lego[param2.particle];
         this.rucape=param2.cooldown;
         this.wyp=0.0;
         return;
      }

      private var go_:GameObject;

      private var noze:Jokaresu;

      private var rucape:Number;

      private var wyp:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.go_.map_==null)
         {
            return false;
         }
         var _loc3_:Number = param2/1000;
         this.wyp=this.wyp-_loc3_;
         if(this.wyp>=0)
         {
            return true;
         }
         this.wyp=this.rucape;
         map_.addObj(new Kiqegu(this.noze),this.go_.x_,this.go_.y_);
         return true;
      }
   }

}