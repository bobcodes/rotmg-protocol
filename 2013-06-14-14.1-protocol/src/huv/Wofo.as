package huv
{
   import flash.events.Event;


   public class Wofo extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wofo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(MONEY_CHANGED,true);
         return;
      }

      public static const MONEY_CHANGED:String = "MONEY_CHANGED";
   }

}