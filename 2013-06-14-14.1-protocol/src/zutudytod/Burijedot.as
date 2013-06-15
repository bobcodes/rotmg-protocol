package zutudytod
{
   import flash.display.Sprite;


   public class Burijedot extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Burijedot() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const duva:Number = 95;

      private static const pyfeqo:Number = 25;

      private static const wyvaha:Number = 0.4;

      private static const dogaq:Number = 0;

      public static const folufawul:uint = 28;

      public static function josymype() : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Number = duva;
         var _loc2_:Number = pyfeqo;
         return lufeh(_loc1_,_loc2_);
      }

      private static function lufeh(param1:Number, param2:Number) : Sprite {
         var _loc3_:Sprite = new Sprite();
         return jywybila(_loc3_,param1,param2);
      }

      private static function jywybila(param1:Sprite, param2:Number, param3:Number) : Sprite {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.graphics.beginFill(dogaq,wyvaha);
         param1.graphics.drawRoundRect(0,0,param2,param3,12,12);
         param1.graphics.endFill();
         return param1;
      }
   }

}