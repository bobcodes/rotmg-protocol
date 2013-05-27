package jybazigiq
{
   import flash.display.Sprite;


   public class Litewev extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Litewev() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const lejohufyf:Number = 95;

      private static const rimibo:Number = 25;

      private static const hopery:Number = 0.4;

      private static const domun:Number = 0;

      public static const cysawyv:uint = 28;

      public static function jeroqonaw() : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Number = lejohufyf;
         var _loc2_:Number = rimibo;
         return lepazu(_loc1_,_loc2_);
      }

      private static function lepazu(param1:Number, param2:Number) : Sprite {
         var _loc3_:Sprite = new Sprite();
         return vesi(_loc3_,param1,param2);
      }

      private static function vesi(param1:Sprite, param2:Number, param3:Number) : Sprite {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.graphics.beginFill(domun,hopery);
         param1.graphics.drawRoundRect(0,0,param2,param3,12,12);
         param1.graphics.endFill();
         return param1;
      }
   }

}