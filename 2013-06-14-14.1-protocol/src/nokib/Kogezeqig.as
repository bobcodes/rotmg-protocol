package nokib
{
   import flash.events.IEventDispatcher;


   public class Kogezeqig extends Object
   {
      public function Kogezeqig(param1:IEventDispatcher, param2:String, param3:Function, param4:Class, param5:Function, param6:Boolean) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         this.jepyqibip=param1;
         this.puqicis=param2;
         this.tesito=param3;
         this.fov=param4;
         this._callback=param5;
         this.lehoto=param6;
         return;
      }

      private var jepyqibip:IEventDispatcher;

      public function get dispatcher() : IEventDispatcher {
         return this.jepyqibip;
      }

      private var puqicis:String;

      public function get eventString() : String {
         return this.puqicis;
      }

      private var tesito:Function;

      public function get listener() : Function {
         return this.tesito;
      }

      private var fov:Class;

      public function get eventClass() : Class {
         return this.fov;
      }

      private var _callback:Function;

      public function get callback() : Function {
         return this._callback;
      }

      private var lehoto:Boolean;

      public function get useCapture() : Boolean {
         return this.lehoto;
      }
   }

}