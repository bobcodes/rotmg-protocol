package lipesyhow
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.map.Qawosiwi;


   public class Background extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Background() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const hamikag:int = 0;

      public static const cydaryj:int = 1;

      public static const qoraqu:int = 2;

      public static const hocicofov:int = 3;

      public static function fibufu(param1:int) : Background {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case hamikag:
               return null;
            case cydaryj:
               return new StarBackground();
            case qoraqu:
               return new NexusBackground();
            default:
               return null;
         }
      }

      public function draw(param1:Qawosiwi, param2:int) : void {
         return;
      }
   }

}