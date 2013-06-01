package mejowozy
{
[CLASS1697]   import com.company.assembleegameclient.objects.GameObject;


   public class XMLEffect extends Ryf
   {
      public function XMLEffect(param1:GameObject, param2:Roneg) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.go_=param1;
         this.wowako=Kez.teqot[param2.particle];
         this.kilumy=param2.cooldown;
         this.johu=0.0;
         return;
      }

      private var go_:GameObject;

      private var wowako:Netevyqaw;

      private var kilumy:Number;

      private var johu:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.go_.map_==null)
         {
            return false;
         }
         var _loc3_:Number = param2/1000;
         this.johu=this.johu-_loc3_;
         if(this.johu>=0)
         {
            return true;
         }
         this.johu=this.kilumy;
         map_.addObj(new Legij(this.wowako),this.go_.x_,this.go_.y_);
         return true;
      }
   }
[/CLASS]
}