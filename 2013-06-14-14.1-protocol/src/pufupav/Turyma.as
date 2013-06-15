package pufupav
{


   public class Turyma extends Particle
   {
      public function Turyma(param1:int, param2:int, param3:int, param4:Number, param5:Number, param6:Number) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         super(param2,param4,param1);
         this.initialSize_=param1;
         this.lifetime_=this.timeLeft_=param3;
         this.dx_=param5;
         this.dy_=param6;
         return;
      }

      public var lifetime_:int;

      public var timeLeft_:int;

      public var initialSize_:int;

      public var dx_:Number;

      public var dy_:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.timeLeft_=this.timeLeft_-param2;
         if(this.timeLeft_<=0)
         {
            return false;
         }
         x_=x_+this.dx_*param2/1000;
         y_=y_+this.dy_*param2/1000;
         setSize(this.timeLeft_/this.lifetime_*this.initialSize_);
         return true;
      }
   }

}