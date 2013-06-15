package jiwej
{


   public class JSON extends Object
   {
      public function JSON() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function encode(param1:Object) : String {
         var _loc2_:Beja = new Beja(param1);
         return _loc2_.getString();
      }

      public static function decode(param1:String) : * {
         var _loc2_:Ruti = new Ruti(param1);
         return _loc2_.getValue();
      }
   }

}