package korer
{
[CLASS1585]   import flash.events.Event;


   public class Jikusoh extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jikusoh(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }

      public static const negag:String = "bindingEmpty";

      override public function clone() : Event {
         return new Jikusoh(type);
      }
   }
[/CLASS]
}