package nytizak
{
[CLASS1143]   import flash.display.Sprite;
   import com.company.assembleegameclient.map.Fot;


   public class Background extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Background() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const goku:int = 0;

      public static const dybihewo:int = 1;

      public static const zerizan:int = 2;

      public static const fygyz:int = 3;

      public static function muse(param1:int) : Background {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case goku:
               return null;
            case dybihewo:
               return new StarBackground();
            case zerizan:
               return new NexusBackground();
            default:
               return null;
         }
      }

      public function draw(param1:Fot, param2:int) : void {
         return;
      }
   }
[/CLASS]
}