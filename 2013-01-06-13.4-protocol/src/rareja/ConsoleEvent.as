package rareja
{
[CLASS1681]   import flash.events.Event;


   public final class ConsoleEvent extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ConsoleEvent(param1:String, param2:String="") {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,false,false);
         this.data=param2;
         return;
      }

      public static const INPUT:String = "ConsoleEvent.INPUT";

      public static const GET_PREVIOUS:String = "ConsoleEvent.GET_PREVIOUS";

      public static const GET_NEXT:String = "ConsoleEvent.GET_NEXT";

      public static const OUTPUT:String = "ConsoleEvent.OUTPUT";

      public var data:String;
   }
[/CLASS]
}