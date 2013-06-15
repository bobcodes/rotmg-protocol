package hodydod
{
   import flash.events.Event;
   import hunavefeg.Hyne;


   public class ModularContextEvent extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ModularContextEvent(param1:String, param2:Hyne) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,true,true);
         this.qasebe=param2;
         return;
      }

      public static const gyg:String = "contextAdd";

      public static const vaciwub:String = "contextRemove";

      private var qasebe:Hyne;

      public function get context() : Hyne {
         return this.qasebe;
      }

      override public function clone() : Event {
         return new ModularContextEvent(type,this.context);
      }

      override public function toString() : String {
         return formatToString("ModularContextEvent","context");
      }
   }

}