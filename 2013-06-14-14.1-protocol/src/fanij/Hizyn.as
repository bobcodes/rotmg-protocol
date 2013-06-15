package fanij
{


   public class Hizyn extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hizyn() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var zul:Object = qur();

      private static function qur() : Object {
         var _loc1_:* = true;
         var _loc2_:* = false;
         zul={};
         zul[Wymove.rofu.value]=30;
         zul[Wymove.zohile.value]=20;
         zul[Wymove.roguk.value]=20;
         zul[Wymove.vikajy.value]=20;
         return zul;
      }

      public static function koryfomow(param1:Cun, param2:Cun) : Number {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Number = bacev(param1);
         var _loc4_:Number = bacev(param2);
         return vupu(_loc3_,_loc4_);
      }

      private static function vupu(param1:Number, param2:Number) : Number {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return (param1+param2)/2;
      }

      private static function bacev(param1:Cun) : Number {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = zul[param1.laj()];
         var _loc3_:int = param1.voz()-_loc2_;
         var _loc4_:int = param1.supufo[0].level-_loc3_;
         return _loc4_/_loc2_;
      }
   }

}