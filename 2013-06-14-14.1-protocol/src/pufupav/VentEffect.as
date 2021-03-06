package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Tocaniw;


   public class VentEffect extends Miwimemo
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function VentEffect(param1:GameObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.go_=param1;
         return;
      }

      private static const bydewa:int = 50;

      public var go_:GameObject;

      public var lastUpdateAction_:int = -1;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:* = 0;
         var _loc5_:VentParticle = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(this.go_.map_==null)
         {
            return false;
         }
         if(this.lastUpdateAction_<0)
         {
            this.lastUpdateAction_=Math.max(0,param1-400);
         }
         x_=this.go_.x_;
         y_=this.go_.y_;
         var _loc3_:int = int(this.lastUpdateAction_/bydewa);
         while(_loc3_<int(param1/bydewa))
         {
            _loc4_=_loc3_*bydewa;
            _loc5_=Tocaniw.dyzovot(VentParticle) as VentParticle;
            _loc5_.restart(_loc4_,param1);
            _loc6_=Math.random()*Math.PI;
            _loc7_=Math.random()*0.4;
            _loc8_=this.go_.x_+_loc7_*Math.cos(_loc6_);
            _loc9_=this.go_.y_+_loc7_*Math.sin(_loc6_);
            map_.addObj(_loc5_,_loc8_,_loc9_);
            _loc3_++;
         }
         this.lastUpdateAction_=param1;
         return true;
      }
   }

}   import pufupav.Particle;
   import com.company.assembleegameclient.util.Tocaniw;


   class VentParticle extends Particle
   {
      function VentParticle() {
         var _loc1_:Number = Math.random();
         super(2542335,0.0,75+_loc1_*50);
         this.speed_=2.5-_loc1_*1.5;
         return;
      }

      public var startTime_:int;

      public var speed_:int;

      public function restart(param1:int, param2:int) : void {
         this.startTime_=param1;
         var _loc3_:Number = (param2-this.startTime_)/1000;
         z_=0.0+this.speed_*_loc3_;
         return;
      }

      override public function removeFromMap() : void {
         super.removeFromMap();
         Tocaniw.rilo(this);
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:Number = (param1-this.startTime_)/1000;
         z_=0.0+this.speed_*_loc3_;
         return z_<1;
      }
   }
