package zoroc
{


   public class Zyqusomub extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zyqusomub() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var boma:Object = koqa();

      private static function koqa() : Object {
         var _loc1_:* = true;
         var _loc2_:* = false;
         boma={};
         boma[Cikyzigit.tupuv.value]=30;
         boma[Cikyzigit.mucum.value]=20;
         boma[Cikyzigit.guzibag.value]=20;
         boma[Cikyzigit.tirik.value]=20;
         return boma;
      }

      public static function pamicaq(param1:Bezuco, param2:Bezuco) : Number {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Number = rekonyne(param1);
         var _loc4_:Number = rekonyne(param2);
         return hypojuca(_loc3_,_loc4_);
      }

      private static function hypojuca(param1:Number, param2:Number) : Number {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return (param1+param2)/2;
      }

      private static function rekonyne(param1:Bezuco) : Number {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = boma[param1.morezo()];
         var _loc3_:int = param1.hevozik()-_loc2_;
         var _loc4_:int = param1.voqy[0].level-_loc3_;
         return _loc4_/_loc2_;
      }
   }

}