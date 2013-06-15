package cigo
{
   import flash.events.Event;
   import flash.display.DisplayObjectContainer;


   public class Pipocy extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Pipocy(param1:String, param2:DisplayObjectContainer) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1);
         this.vylyqilug=param2;
         return;
      }

      public static const zav:String = "containerAdd";

      public static const jajah:String = "containerRemove";

      public static const mema:String = "rootContainerAdd";

      public static const masac:String = "rootContainerRemove";

      private var vylyqilug:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.vylyqilug;
      }

      override public function clone() : Event {
         return new Pipocy(type,this.vylyqilug);
      }
   }

}