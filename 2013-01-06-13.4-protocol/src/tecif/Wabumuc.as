package tecif
{
[CLASS1390]   import flash.errors.IllegalOperationError;


   public class Wabumuc extends Vigoviq
   {
      public function Wabumuc() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      override public function describeMismatch(param1:Object, param2:Description) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         matchesOrDescribesMismatch(param1,param2);
         return;
      }

      protected function matchesOrDescribesMismatch(param1:Object, param2:Description) : Boolean {
         throw new IllegalOperationError("DiagnosingMatcher#matches is abstract and must be overriden in a subclass");
      }

      override public function matches(param1:Object) : Boolean {
         return matchesOrDescribesMismatch(param1,new Tynosojef());
      }
   }
[/CLASS]
}