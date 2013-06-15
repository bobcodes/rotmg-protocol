package pufupav
{


   public class Fesov extends Turyma
   {
      public function Fesov(param1:int, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         this.fusyvedol=param4;
         super(param1,param2,param3,param5,param6,param7);
         return;
      }

      private var fusyvedol:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = NaN;
         timeLeft_=timeLeft_-param2;
         if(timeLeft_<=0)
         {
            return false;
         }
         if((mizuky.obj_)&&(mizuky.obj_.props_.static_))
         {
            return false;
         }
         var _loc3_:Number = Math.random()*this.fusyvedol;
         _loc4_=Math.random()*this.fusyvedol;
         x_=x_+dx_*_loc3_*param2/1000;
         y_=y_+dy_*_loc4_*param2/1000;
         setSize(timeLeft_/lifetime_*initialSize_);
         return true;
      }
   }

}