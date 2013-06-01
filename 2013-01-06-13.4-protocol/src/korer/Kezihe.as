package korer
{
[CLASS1586]   import flash.events.Event;
   import flash.display.DisplayObjectContainer;


   public class Kezihe extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kezihe(param1:String, param2:DisplayObjectContainer) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1);
         this.vyl=param2;
         return;
      }

      public static const wowow:String = "containerAdd";

      public static const mynyhyqo:String = "containerRemove";

      public static const vomy:String = "rootContainerAdd";

      public static const merepuf:String = "rootContainerRemove";

      private var vyl:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.vyl;
      }

      override public function clone() : Event {
         return new Kezihe(type,this.vyl);
      }
   }
[/CLASS]
}