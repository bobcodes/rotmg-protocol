package fozo
{
   import flash.events.Event;
   import flash.display.DisplayObjectContainer;


   public class Hoqyf extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hoqyf(param1:String, param2:DisplayObjectContainer) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1);
         this.falaloceb=param2;
         return;
      }

      public static const tebowomyq:String = "containerAdd";

      public static const wimug:String = "containerRemove";

      public static const vaviguq:String = "rootContainerAdd";

      public static const nesicy:String = "rootContainerRemove";

      private var falaloceb:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.falaloceb;
      }

      override public function clone() : Event {
         return new Hoqyf(type,this.falaloceb);
      }
   }

}