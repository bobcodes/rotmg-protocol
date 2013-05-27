package nafa
{
   import flash.events.Event;


   public class Hutisame extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hutisame(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(myhon);
         this.sofabe=param1;
         return;
      }

      public static const myhon:String = "MAP_TEST_EVENT";

      public var sofabe:String;
   }

}