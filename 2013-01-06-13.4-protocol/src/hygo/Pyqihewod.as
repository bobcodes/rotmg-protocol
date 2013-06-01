package hygo
{
[CLASS1392]   import tecif.Vigoviq;
   import tecif.Kajehe;
   import tecif.Description;


   public class Pyqihewod extends Vigoviq
   {
      public function Pyqihewod(param1:Kajehe) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         _matcher=param1;
         return;
      }

      private var _matcher:Kajehe;

      override public function matches(param1:Object) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !_matcher.matches(param1);
      }

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.appendText("not ").bubejyt(_matcher);
         return;
      }
   }
[/CLASS]
}