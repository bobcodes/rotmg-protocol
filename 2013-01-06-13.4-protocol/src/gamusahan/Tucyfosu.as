package gamusahan
{
[CLASS352]   import bifunaj.JSON;


   public class Tucyfosu extends Object implements Lahocuji
   {
      public function Tucyfosu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function stringify(param1:Object) : String {
         return bifunaj.JSON.encode(param1);
      }

      public function parse(param1:String) : Object {
         return bifunaj.JSON.decode(param1);
      }
   }
[/CLASS]
}