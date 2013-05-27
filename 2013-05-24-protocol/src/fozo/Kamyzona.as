package fozo
{
   import flash.events.Event;
   import flash.display.DisplayObjectContainer;
   import valatom.Nageqyned;


   public class Kamyzona extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kamyzona(param1:String, param2:DisplayObjectContainer=null, param3:Nageqyned=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.falaloceb=param2;
         this._handler=param3;
         return;
      }

      public static const tebowomyq:String = "containerAdd";

      public static const wimug:String = "containerRemove";

      public static const burucyn:String = "handlerAdd";

      public static const zicy:String = "handlerRemove";

      private var falaloceb:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.falaloceb;
      }

      private var _handler:Nageqyned;

      public function get handler() : Nageqyned {
         return this._handler;
      }

      override public function clone() : Event {
         return new Kamyzona(type,this.falaloceb,this._handler);
      }
   }

}