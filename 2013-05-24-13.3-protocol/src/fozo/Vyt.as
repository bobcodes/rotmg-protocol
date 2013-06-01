package fozo
{
   import flash.events.Event;


   public class Vyt extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vyt(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }

      public static const hil:String = "bindingEmpty";

      override public function clone() : Event {
         return new Vyt(type);
      }
   }

}