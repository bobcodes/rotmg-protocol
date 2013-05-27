package sojycav
{
   import flash.events.Event;
   import komawowag.Net;


   public class ModularContextEvent extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ModularContextEvent(param1:String, param2:Net) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,true,true);
         this.kavev=param2;
         return;
      }

      public static const qohoqace:String = "contextAdd";

      public static const wac:String = "contextRemove";

      private var kavev:Net;

      public function get context() : Net {
         return this.kavev;
      }

      override public function clone() : Event {
         return new ModularContextEvent(type,this.context);
      }

      override public function toString() : String {
         return formatToString("ModularContextEvent","context");
      }
   }

}