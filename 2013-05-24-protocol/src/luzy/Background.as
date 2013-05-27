package luzy
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.map.Wypyj;


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

      public static const purehy:int = 0;

      public static const tywon:int = 1;

      public static const myhibefy:int = 2;

      public static const qevolylaq:int = 3;

      public static function johyrubo(param1:int) : Background {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(param1)
         {
            case purehy:
               return null;
            case tywon:
               return new StarBackground();
            case myhibefy:
               return new NexusBackground();
            default:
               return null;
         }
      }

      public function draw(param1:Wypyj, param2:int) : void {
         return;
      }
   }

}