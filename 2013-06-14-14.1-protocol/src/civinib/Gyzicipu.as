package civinib
{
   import buf.Nywyfyhi;
   import buf.Description;
   import buf.Dyn;


   public class Gyzicipu extends Nywyfyhi
   {
      public function Gyzicipu(param1:Array) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         vocor=(param1)||([]);
         return;
      }

      private var vocor:Array;

      override protected function matchesOrDescribesMismatch(param1:Object, param2:Description) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Dyn = null;
         for each (_loc3_ in vocor)
         {
            if(!_loc3_.matches(param1))
            {
               param2.nozyf(_loc3_).appendText(" ").fojuger(_loc3_,param1);
               return false;
            }
         }
         return true;
      }

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.zelod("("," and ",")",vocor);
         return;
      }
   }

}