package qypupet
{
[CLASS975]

   public class Fytoritum extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fytoritum() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var rypame:Object = hybaji();

      private static function hybaji() : Object {
         var _loc1_:* = true;
         var _loc2_:* = false;
         rypame={};
         rypame[Gucuqop.hanetorum.value]=30;
         rypame[Gucuqop.puvalamu.value]=20;
         rypame[Gucuqop.gohalime.value]=20;
         rypame[Gucuqop.fisowybe.value]=20;
         return rypame;
      }

      public static function lahywara(param1:Vuravipyg, param2:Vuravipyg) : Number {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Number = camobo(param1);
         var _loc4_:Number = camobo(param2);
         return siju(_loc3_,_loc4_);
      }

      private static function siju(param1:Number, param2:Number) : Number {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return (param1+param2)/2;
      }

      private static function camobo(param1:Vuravipyg) : Number {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = rypame[param1.nyv()];
         var _loc3_:int = param1.sujyditig()-_loc2_;
         var _loc4_:int = param1.wosyjuzed[0].level-_loc3_;
         return _loc4_/_loc2_;
      }
   }
[/CLASS]
}