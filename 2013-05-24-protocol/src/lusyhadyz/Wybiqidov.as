package lusyhadyz
{
   import cuba.Nutog;
   import cuba.Description;
   import cuba.Waha;


   public class Wybiqidov extends Nutog
   {
      public function Wybiqidov(param1:Array) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         wewadibef=(param1)||([]);
         return;
      }

      private var wewadibef:Array;

      override protected function matchesOrDescribesMismatch(param1:Object, param2:Description) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Waha = null;
         for each (_loc3_ in wewadibef)
         {
            if(!_loc3_.matches(param1))
            {
               param2.gebaz(_loc3_).appendText(" ").wim(_loc3_,param1);
               return false;
            }
         }
         return true;
      }

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.jali("("," and ",")",wewadibef);
         return;
      }
   }

}