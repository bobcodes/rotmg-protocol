package mejowozy
{
[CLASS1857]   import com.company.assembleegameclient.util.Deqipe;


   public class Bufidevid extends Particle
   {
      public function Bufidevid(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super(param1,0.0,75+Math.random()*50);
         this.rilec=param2;
         this.life=param3*1000;
         this.lifeVariance=param4;
         this.speedVariance=param5;
         this.spread=param6;
         this.jigu=0;
         this.tagy=0;
         return;
      }

      public static function create(param1:*, param2:uint, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Bufidevid {
         var _loc8_:Bufidevid = Deqipe.getObject(param1) as Bufidevid;
         if(!_loc8_)
         {
            _loc8_=new Bufidevid(param2,param3,param4,param5,param6,param7);
         }
         return _loc8_;
      }

      private const vij:Number = 0.0025;

      public var startTime:int;

      public var speed:Number;

      public var spread:Number;

      public var rilec:Number;

      public var life:Number;

      public var lifeVariance:Number;

      public var speedVariance:Number;

      public var mebakogef:Number;

      public var jigu:Number;

      public var tagy:Number;

      public function restart(param1:int, param2:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.startTime=param1;
         var _loc3_:Number = Math.random();
         this.speed=(this.rilec-this.rilec*_loc3_*(1-this.speedVariance))*10;
         if(this.spread>0)
         {
            this.jigu=Math.random()*this.spread-0.1;
            this.tagy=Math.random()*this.spread-0.1;
         }
         var _loc4_:Number = (param2-param1)/1000;
         this.mebakogef=this.life-this.life*_loc3_*(1-this.lifeVariance);
         z_=this.speed*_loc4_;
         return;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.removeFromMap();
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Number = (param1-this.startTime)/1000;
         this.mebakogef=this.mebakogef-param2;
         if(this.mebakogef<=0)
         {
            return false;
         }
         z_=this.speed*_loc3_;
         if(this.spread>0)
         {
            moveTo(x_+this.jigu*param2*this.vij,y_+this.tagy*param2*this.vij);
         }
         return true;
      }
   }
[/CLASS]
}