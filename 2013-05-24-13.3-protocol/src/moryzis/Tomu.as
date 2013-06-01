package moryzis
{
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Hidad;


   public class Tomu extends Jil
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tomu(param1:GameObject, param2:Baly) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.go_=param1;
         this.bohanojo=param2;
         this.gahaqic=(1-param2.rate)*vugytibo+1;
         this.lysys="BubbleEffect_"+Math.random();
         return;
      }

      private static const vugytibo:Number = 400;

      private var lysys:String;

      public var go_:GameObject;

      public var lastUpdate_:int = -1;

      public var gahaqic:Number;

      private var bohanojo:Baly;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc11_:Tywe = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         if(this.go_.map_==null)
         {
            return false;
         }
         if(!this.lastUpdate_)
         {
            this.lastUpdate_=param1;
            return true;
         }
         _loc3_=int(this.lastUpdate_/this.gahaqic);
         _loc4_=int(param1/this.gahaqic);
         _loc8_=this.go_.x_;
         var _loc9_:Number = this.go_.y_;
         if(this.lastUpdate_<0)
         {
            this.lastUpdate_=Math.max(0,param1-vugytibo);
         }
         x_=_loc8_;
         y_=_loc9_;
         var _loc10_:int = _loc3_;
         while(_loc10_<_loc4_)
         {
            _loc5_=_loc10_*this.gahaqic;
            _loc11_=Tywe.create(this.lysys,this.bohanojo.color,this.bohanojo.speed,this.bohanojo.life,this.bohanojo.lifeVariance,this.bohanojo.speedVariance,this.bohanojo.spread);
            _loc11_.restart(_loc5_,param1);
            _loc6_=Math.random()*Math.PI;
            _loc7_=Math.random()*0.4;
            _loc12_=_loc8_+_loc7_*Math.cos(_loc6_);
            _loc13_=_loc9_+_loc7_*Math.sin(_loc6_);
            map_.addObj(_loc11_,_loc12_,_loc13_);
            _loc10_++;
         }
         this.lastUpdate_=param1;
         return true;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.removeFromMap();
         Hidad.dump(this.lysys);
         return;
      }
   }

}