package qucuqesif
{
   import jyno.Hakovo;


   public class Mud extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Mud() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const ryd:Hakovo = new Hakovo(20,1.08);

      public static function vezagehi(param1:int) : Number {
         return ryd.zeqa(param1);
      }

      public static function vege(param1:int, param2:int) : Number {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Number = vezagehi(param2-1);
         return param1-_loc3_;
      }

      public static function gavyr(param1:int) : Number {
         return ryd.pequqa(param1-1);
      }
   }

}