package korer
{
[CLASS1583]   import flash.events.Event;
   import flash.display.DisplayObjectContainer;
   import suzu.Ved;


   public class Bijut extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Bijut(param1:String, param2:DisplayObjectContainer=null, param3:Ved=null) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.vyl=param2;
         this._handler=param3;
         return;
      }

      public static const wowow:String = "containerAdd";

      public static const mynyhyqo:String = "containerRemove";

      public static const tysefyq:String = "handlerAdd";

      public static const petafedi:String = "handlerRemove";

      private var vyl:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.vyl;
      }

      private var _handler:Ved;

      public function get handler() : Ved {
         return this._handler;
      }

      override public function clone() : Event {
         return new Bijut(type,this.vyl,this._handler);
      }
   }
[/CLASS]
}