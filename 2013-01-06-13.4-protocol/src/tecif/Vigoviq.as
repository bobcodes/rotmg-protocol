package tecif
{
[CLASS1388]   import flash.errors.IllegalOperationError;


   public class Vigoviq extends Object implements Kajehe
   {
      public function Vigoviq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function describeMismatch(param1:Object, param2:Description) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param2.appendText("was ").hoza(param1);
         return;
      }

      public function matches(param1:Object) : Boolean {
         throw new IllegalOperationError("BaseMatcher#matches must be override by subclass");
      }

      public function describeTo(param1:Description) : void {
         throw new IllegalOperationError("BaseMatcher#describeTo must be override by subclass");
      }

      public function toString() : String {
         return Gyzareby.toString(this);
      }
   }
[/CLASS]
}