package bifunaj
{
[CLASS996]

   public class JSON extends Object
   {
      public function JSON() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function encode(param1:Object) : String {
         var _loc2_:Romez = new Romez(param1);
         return _loc2_.getString();
      }

      public static function decode(param1:String) : * {
         var _loc2_:Zut = new Zut(param1);
         return _loc2_.getValue();
      }
   }
[/CLASS]
}