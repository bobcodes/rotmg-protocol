package kahokuny
{
   import flash.events.IEventDispatcher;


   public class Miz extends Object
   {
      public function Miz(param1:IEventDispatcher, param2:String, param3:Function, param4:Class, param5:Function, param6:Boolean) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         this.pidehyt=param1;
         this.juretyjil=param2;
         this.hyzej=param3;
         this.piha=param4;
         this._callback=param5;
         this.cenole=param6;
         return;
      }

      private var pidehyt:IEventDispatcher;

      public function get dispatcher() : IEventDispatcher {
         return this.pidehyt;
      }

      private var juretyjil:String;

      public function get eventString() : String {
         return this.juretyjil;
      }

      private var hyzej:Function;

      public function get listener() : Function {
         return this.hyzej;
      }

      private var piha:Class;

      public function get eventClass() : Class {
         return this.piha;
      }

      private var _callback:Function;

      public function get callback() : Function {
         return this._callback;
      }

      private var cenole:Boolean;

      public function get useCapture() : Boolean {
         return this.cenole;
      }
   }

}