package moryzis
{
   import com.company.assembleegameclient.util.Hidad;


   public class Tywe extends Particle
   {
      public function Tywe(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(param1,0.0,75+Math.random()*50);
         this.qureniw=param2;
         this.life=param3*1000;
         this.lifeVariance=param4;
         this.speedVariance=param5;
         this.spread=param6;
         this.talaluzo=0;
         this.lalojo=0;
         return;
      }

      public static function create(param1:*, param2:uint, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Tywe {
         var _loc8_:Tywe = Hidad.getObject(param1) as Tywe;
         if(!_loc8_)
         {
            _loc8_=new Tywe(param2,param3,param4,param5,param6,param7);
         }
         return _loc8_;
      }

      private const silez:Number = 0.0025;

      public var startTime:int;

      public var speed:Number;

      public var spread:Number;

      public var qureniw:Number;

      public var life:Number;

      public var lifeVariance:Number;

      public var speedVariance:Number;

      public var lelosizoq:Number;

      public var talaluzo:Number;

      public var lalojo:Number;

      public function restart(param1:int, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.startTime=param1;
         var _loc3_:Number = Math.random();
         this.speed=(this.qureniw-this.qureniw*_loc3_*(1-this.speedVariance))*10;
         if(this.spread>0)
         {
            this.talaluzo=Math.random()*this.spread-0.1;
            this.lalojo=Math.random()*this.spread-0.1;
         }
         var _loc4_:Number = (param2-param1)/1000;
         this.lelosizoq=this.life-this.life*_loc3_*(1-this.lifeVariance);
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
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Number = (param1-this.startTime)/1000;
         this.lelosizoq=this.lelosizoq-param2;
         if(this.lelosizoq<=0)
         {
            return false;
         }
         z_=this.speed*_loc3_;
         if(this.spread>0)
         {
            moveTo(x_+this.talaluzo*param2*this.silez,y_+this.lalojo*param2*this.silez);
         }
         return true;
      }
   }

}