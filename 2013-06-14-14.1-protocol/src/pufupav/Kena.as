package pufupav
{
   import com.company.assembleegameclient.util.Tocaniw;


   public class Kena extends Particle
   {
      public function Kena(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(param1,0.0,75+Math.random()*50);
         this.lepetenid=param2;
         this.life=param3*1000;
         this.lifeVariance=param4;
         this.speedVariance=param5;
         this.spread=param6;
         this.nezepuwu=0;
         this.pyjaw=0;
         return;
      }

      public static function create(param1:*, param2:uint, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Kena {
         var _loc8_:Kena = Tocaniw.getObject(param1) as Kena;
         if(!_loc8_)
         {
            _loc8_=new Kena(param2,param3,param4,param5,param6,param7);
         }
         return _loc8_;
      }

      private const gypoqe:Number = 0.0025;

      public var startTime:int;

      public var speed:Number;

      public var spread:Number;

      public var lepetenid:Number;

      public var life:Number;

      public var lifeVariance:Number;

      public var speedVariance:Number;

      public var votuqunyp:Number;

      public var nezepuwu:Number;

      public var pyjaw:Number;

      public function restart(param1:int, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.startTime=param1;
         var _loc3_:Number = Math.random();
         this.speed=(this.lepetenid-this.lepetenid*_loc3_*(1-this.speedVariance))*10;
         if(this.spread>0)
         {
            this.nezepuwu=Math.random()*this.spread-0.1;
            this.pyjaw=Math.random()*this.spread-0.1;
         }
         var _loc4_:Number = (param2-param1)/1000;
         this.votuqunyp=this.life-this.life*_loc3_*(1-this.lifeVariance);
         z_=this.speed*_loc4_;
         return;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.removeFromMap();
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Number = (param1-this.startTime)/1000;
         this.votuqunyp=this.votuqunyp-param2;
         if(this.votuqunyp<=0)
         {
            return false;
         }
         z_=this.speed*_loc3_;
         if(this.spread>0)
         {
            moveTo(x_+this.nezepuwu*param2*this.gypoqe,y_+this.pyjaw*param2*this.gypoqe);
         }
         return true;
      }
   }

}