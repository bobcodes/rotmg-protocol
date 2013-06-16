package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Tocaniw;


   public class Foqywi extends Miwimemo
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Foqywi(param1:GameObject, param2:Tajy) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.go_=param1;
         this.gedyh=param2;
         this.poketaq=(1-param2.rate)*sytypiq+1;
         this.pero="BubbleEffect_"+Math.random();
         return;
      }

      private static const sytypiq:Number = 400;

      private var pero:String;

      public var go_:GameObject;

      public var lastUpdateAction_:int = -1;

      public var poketaq:Number;

      private var gedyh:Tajy;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc11_:Kena = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         if(this.go_.map_==null)
         {
            return false;
         }
         if(!this.lastUpdateAction_)
         {
            this.lastUpdateAction_=param1;
            return true;
         }
         _loc3_=int(this.lastUpdateAction_/this.poketaq);
         _loc4_=int(param1/this.poketaq);
         _loc8_=this.go_.x_;
         var _loc9_:Number = this.go_.y_;
         if(this.lastUpdateAction_<0)
         {
            this.lastUpdateAction_=Math.max(0,param1-sytypiq);
         }
         x_=_loc8_;
         y_=_loc9_;
         var _loc10_:int = _loc3_;
         while(_loc10_<_loc4_)
         {
            _loc5_=_loc10_*this.poketaq;
            _loc11_=Kena.create(this.pero,this.gedyh.color,this.gedyh.speed,this.gedyh.life,this.gedyh.lifeVariance,this.gedyh.speedVariance,this.gedyh.spread);
            _loc11_.restart(_loc5_,param1);
            _loc6_=Math.random()*Math.PI;
            _loc7_=Math.random()*0.4;
            _loc12_=_loc8_+_loc7_*Math.cos(_loc6_);
            _loc13_=_loc9_+_loc7_*Math.sin(_loc6_);
            map_.addObj(_loc11_,_loc12_,_loc13_);
            _loc10_++;
         }
         this.lastUpdateAction_=param1;
         return true;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.removeFromMap();
         Tocaniw.dump(this.pero);
         return;
      }
   }

}