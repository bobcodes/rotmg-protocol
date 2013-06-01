package vehesaj
{
[CLASS884]   import flash.display.Sprite;


   public class Vadico extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vadico() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const doq:Number = 95;

      private static const hafenogic:Number = 25;

      private static const ralymakih:Number = 0.4;

      private static const farobivo:Number = 0;

      public static const gohowy:uint = 28;

      public static function cevafosan() : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Number = doq;
         var _loc2_:Number = hafenogic;
         return monor(_loc1_,_loc2_);
      }

      private static function monor(param1:Number, param2:Number) : Sprite {
         var _loc3_:Sprite = new Sprite();
         return pegag(_loc3_,param1,param2);
      }

      private static function pegag(param1:Sprite, param2:Number, param3:Number) : Sprite {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param1.graphics.beginFill(farobivo,ralymakih);
         param1.graphics.drawRoundRect(0,0,param2,param3,12,12);
         param1.graphics.endFill();
         return param1;
      }
   }
[/CLASS]
}