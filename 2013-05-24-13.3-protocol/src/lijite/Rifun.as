package lijite
{


   public class Rifun extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rifun(param1:int) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.index=param1;
         return;
      }

      public static const vyda:Rifun = new Rifun(1);

      public static const jomyze:Rifun = new Rifun(2);

      public static const byraw:Rifun = new Rifun(3);

      private static const gumas:Object = {
                                                1:vyda,
                                                2:jomyze,
                                                3:byraw
                                                };

      public static function parse(param1:int) : Rifun {
         return gumas[param1];
      }

      private var index:int;

      public function haq() : int {
         return this.index;
      }
   }

}