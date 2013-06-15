package nagyc
{


   public class Guzakis extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Guzakis(param1:int) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.index=param1;
         return;
      }

      public static const zicop:Guzakis = new Guzakis(1);

      public static const refiz:Guzakis = new Guzakis(2);

      public static const wacy:Guzakis = new Guzakis(3);

      private static const sudiwowyc:Object = {
                                                    1:zicop,
                                                    2:refiz,
                                                    3:wacy
                                                    };

      public static function parse(param1:int) : Guzakis {
         return sudiwowyc[param1];
      }

      private var index:int;

      public function pavopa() : int {
         return this.index;
      }
   }

}