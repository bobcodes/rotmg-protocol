package lusyhadyz
{
   import cuba.Todo;
   import cuba.Waha;
   import cuba.Description;


   public class Pube extends Todo
   {
      public function Pube(param1:Waha) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         _matcher=param1;
         return;
      }

      private var _matcher:Waha;

      override public function matches(param1:Object) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !_matcher.matches(param1);
      }

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.appendText("not ").gebaz(_matcher);
         return;
      }
   }

}