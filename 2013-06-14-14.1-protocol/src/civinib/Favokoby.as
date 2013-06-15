package civinib
{
   import buf.Kolisywab;
   import buf.Dyn;
   import buf.Description;


   public class Favokoby extends Kolisywab
   {
      public function Favokoby(param1:Dyn) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         _matcher=param1;
         return;
      }

      private var _matcher:Dyn;

      override public function matches(param1:Object) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !_matcher.matches(param1);
      }

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.appendText("not ").nozyf(_matcher);
         return;
      }
   }

}