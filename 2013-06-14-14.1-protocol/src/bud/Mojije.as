package bud
{


   public class Mojije extends Nud
   {
      public function Mojije(param1:String, param2:Array, param3:uint, param4:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(param1,param2,param3,false,null);
         this.order=param4;
         return;
      }

      public var order:int;
   }

}