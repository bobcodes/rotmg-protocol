package cigo
{
   import flash.events.Event;
   import flash.display.DisplayObject;


   public class Laru extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Laru(param1:String, param2:DisplayObject=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,true,true);
         this.petitynu=param2;
         return;
      }

      public static const pytejono:String = "configureView";

      private var petitynu:DisplayObject;

      public function get view() : DisplayObject {
         return this.petitynu;
      }

      override public function clone() : Event {
         return new Laru(type,this.petitynu);
      }
   }

}