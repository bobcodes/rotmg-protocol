package korer
{
[CLASS1588]   import flash.events.Event;
   import flash.display.DisplayObject;


   public class Dufateqad extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Dufateqad(param1:String, param2:DisplayObject=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,true,true);
         this.wygigohi=param2;
         return;
      }

      public static const zicir:String = "configureView";

      private var wygigohi:DisplayObject;

      public function get view() : DisplayObject {
         return this.wygigohi;
      }

      override public function clone() : Event {
         return new Dufateqad(type,this.wygigohi);
      }
   }
[/CLASS]
}