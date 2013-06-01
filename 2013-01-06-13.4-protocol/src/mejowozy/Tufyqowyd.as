package mejowozy
{
[CLASS1699]   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.util.Deqipe;


   public class Tufyqowyd extends Ryf
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tufyqowyd(param1:GameObject, param2:Roneg) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.go_=param1;
         this.wusukuga=param2;
         this.nevy=(1-param2.rate)*ragip+1;
         this.hydojum="BubbleEffect_"+Math.random();
         return;
      }

      private static const ragip:Number = 400;

      private var hydojum:String;

      public var go_:GameObject;

      public var lastUpdate_:int = -1;

      public var nevy:Number;

      private var wusukuga:Roneg;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc11_:Bufidevid = null;
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
         _loc3_=int(this.lastUpdate_/this.nevy);
         _loc4_=int(param1/this.nevy);
         _loc8_=this.go_.x_;
         var _loc9_:Number = this.go_.y_;
         if(this.lastUpdate_<0)
         {
            this.lastUpdate_=Math.max(0,param1-ragip);
         }
         x_=_loc8_;
         y_=_loc9_;
         var _loc10_:int = _loc3_;
         while(_loc10_<_loc4_)
         {
            _loc5_=_loc10_*this.nevy;
            _loc11_=Bufidevid.create(this.hydojum,this.wusukuga.color,this.wusukuga.speed,this.wusukuga.life,this.wusukuga.lifeVariance,this.wusukuga.speedVariance,this.wusukuga.spread);
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
         Deqipe.dump(this.hydojum);
         return;
      }
   }
[/CLASS]
}