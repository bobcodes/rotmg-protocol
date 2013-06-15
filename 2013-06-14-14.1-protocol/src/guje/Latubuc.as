package guje
{
   import jiwej.JSON;


   public class Latubuc extends Object implements Kehyg
   {
      public function Latubuc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function stringify(param1:Object) : String {
         return jiwej.JSON.encode(param1);
      }

      public function parse(param1:String) : Object {
         return jiwej.JSON.decode(param1);
      }
   }

}