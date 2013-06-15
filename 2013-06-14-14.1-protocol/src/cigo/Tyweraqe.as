package cigo
{
   import flash.events.Event;


   public class Tyweraqe extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tyweraqe(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }

      public static const peceby:String = "bindingEmpty";

      override public function clone() : Event {
         return new Tyweraqe(type);
      }
   }

}