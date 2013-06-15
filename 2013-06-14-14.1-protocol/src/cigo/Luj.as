package cigo
{
   import flash.events.Event;
   import flash.display.DisplayObjectContainer;
   import pune.Dyhaqa;


   public class Luj extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Luj(param1:String, param2:DisplayObjectContainer=null, param3:Dyhaqa=null) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.vylyqilug=param2;
         this._handler=param3;
         return;
      }

      public static const zav:String = "containerAdd";

      public static const jajah:String = "containerRemove";

      public static const vujahah:String = "handlerAdd";

      public static const padabusot:String = "handlerRemove";

      private var vylyqilug:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.vylyqilug;
      }

      private var _handler:Dyhaqa;

      public function get handler() : Dyhaqa {
         return this._handler;
      }

      override public function clone() : Event {
         return new Luj(type,this.vylyqilug,this._handler);
      }
   }

}