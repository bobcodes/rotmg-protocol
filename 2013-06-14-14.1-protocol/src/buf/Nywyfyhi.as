package buf
{
   import flash.errors.IllegalOperationError;


   public class Nywyfyhi extends Kolisywab
   {
      public function Nywyfyhi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override public function describeMismatch(param1:Object, param2:Description) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         matchesOrDescribesMismatch(param1,param2);
         return;
      }

      protected function matchesOrDescribesMismatch(param1:Object, param2:Description) : Boolean {
         throw new IllegalOperationError("DiagnosingMatcher#matches is abstract and must be overriden in a subclass");
      }

      override public function matches(param1:Object) : Boolean {
         return matchesOrDescribesMismatch(param1,new Nufahibus());
      }
   }

}