package nyreq
{


   public class Jicif extends Object
   {
      public function Jicif() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function tewesedep(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         return 1-Math.cos(param1*Math.PI/2);
      }

      public static function naliwesuj(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         return Math.sin(param1*Math.PI/2);
      }

      public static function kudad(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return -0.5*(Math.cos(param1*Math.PI)-1);
      }
   }

}