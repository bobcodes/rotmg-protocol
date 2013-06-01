package pov
{
   import flash.events.Event;


   public class Hemogusuj extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hemogusuj() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(MONEY_CHANGED,true);
         return;
      }

      public static const MONEY_CHANGED:String = "MONEY_CHANGED";
   }

}