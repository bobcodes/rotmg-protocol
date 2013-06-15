package buf
{
   import flash.errors.IllegalOperationError;


   public class Kolisywab extends Object implements Dyn
   {
      public function Kolisywab() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function describeMismatch(param1:Object, param2:Description) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param2.appendText("was ").siw(param1);
         return;
      }

      public function matches(param1:Object) : Boolean {
         throw new IllegalOperationError("BaseMatcher#matches must be override by subclass");
      }

      public function describeTo(param1:Description) : void {
         throw new IllegalOperationError("BaseMatcher#describeTo must be override by subclass");
      }

      public function toString() : String {
         return Fusij.toString(this);
      }
   }

}