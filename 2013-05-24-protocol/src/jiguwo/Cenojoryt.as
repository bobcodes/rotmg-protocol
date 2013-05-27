package jiguwo
{


   public class Cenojoryt extends Object
   {
      public function Cenojoryt() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function gup(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         return 1-Math.cos(param1*Math.PI/2);
      }

      public static function lerery(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         return Math.sin(param1*Math.PI/2);
      }

      public static function debimozo(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         var _loc5_:* = true;
         var _loc6_:* = false;
         return -0.5*(Math.cos(param1*Math.PI)-1);
      }
   }

}