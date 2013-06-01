package gyqadewa
{
[CLASS921]

   public class Byk extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Byk(param1:int) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.index=param1;
         return;
      }

      public static const negiry:Byk = new Byk(1);

      public static const pyzy:Byk = new Byk(2);

      public static const jasewif:Byk = new Byk(3);

      private static const zanylajaj:Object = {
                                                    1:negiry,
                                                    2:pyzy,
                                                    3:jasewif
                                                    };

      public static function parse(param1:int) : Byk {
         return zanylajaj[param1];
      }

      private var index:int;

      public function cafeky() : int {
         return this.index;
      }
   }
[/CLASS]
}