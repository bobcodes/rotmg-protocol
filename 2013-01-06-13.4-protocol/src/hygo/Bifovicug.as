package hygo
{
[CLASS1391]   import tecif.Wabumuc;
   import tecif.Description;
   import tecif.Kajehe;


   public class Bifovicug extends Wabumuc
   {
      public function Bifovicug(param1:Array) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         zav=(param1)||([]);
         return;
      }

      private var zav:Array;

      override protected function matchesOrDescribesMismatch(param1:Object, param2:Description) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Kajehe = null;
         for each (_loc3_ in zav)
         {
            if(!_loc3_.matches(param1))
            {
               param2.bubejyt(_loc3_).appendText(" ").luqy(_loc3_,param1);
               return false;
            }
         }
         return true;
      }

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.dimeqacuj("("," and ",")",zav);
         return;
      }
   }
[/CLASS]
}