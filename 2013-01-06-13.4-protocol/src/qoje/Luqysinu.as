package qoje
{
[CLASS1587]   import flash.events.IEventDispatcher;


   public class Luqysinu extends Object
   {
      public function Luqysinu(param1:IEventDispatcher, param2:String, param3:Function, param4:Class, param5:Function, param6:Boolean) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         this.maw=param1;
         this.lyqefugoq=param2;
         this.votufad=param3;
         this.jabigevi=param4;
         this._callback=param5;
         this.fojobep=param6;
         return;
      }

      private var maw:IEventDispatcher;

      public function get dispatcher() : IEventDispatcher {
         return this.maw;
      }

      private var lyqefugoq:String;

      public function get eventString() : String {
         return this.lyqefugoq;
      }

      private var votufad:Function;

      public function get listener() : Function {
         return this.votufad;
      }

      private var jabigevi:Class;

      public function get eventClass() : Class {
         return this.jabigevi;
      }

      private var _callback:Function;

      public function get callback() : Function {
         return this._callback;
      }

      private var fojobep:Boolean;

      public function get useCapture() : Boolean {
         return this.fojobep;
      }
   }
[/CLASS]
}