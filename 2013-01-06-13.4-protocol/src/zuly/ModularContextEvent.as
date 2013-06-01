package zuly
{
[CLASS1007]   import flash.events.Event;
   import bikyvym.Cedymynet;


   public class ModularContextEvent extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ModularContextEvent(param1:String, param2:Cedymynet) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,true,true);
         this.nagygob=param2;
         return;
      }

      public static const tugy:String = "contextAdd";

      public static const fulaqeqyp:String = "contextRemove";

      private var nagygob:Cedymynet;

      public function get context() : Cedymynet {
         return this.nagygob;
      }

      override public function clone() : Event {
         return new ModularContextEvent(type,this.context);
      }

      override public function toString() : String {
         return formatToString("ModularContextEvent","context");
      }
   }
[/CLASS]
}