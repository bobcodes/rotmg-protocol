package kyt
{
   import modesyno.JSON;


   public class Rihici extends Object implements Zurucuvy
   {
      public function Rihici() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function stringify(param1:Object) : String {
         return modesyno.JSON.encode(param1);
      }

      public function parse(param1:String) : Object {
         return modesyno.JSON.decode(param1);
      }
   }

}