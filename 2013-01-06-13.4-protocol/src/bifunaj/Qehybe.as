package bifunaj
{
[CLASS1752]

   public class Qehybe extends Object
   {
      public function Qehybe(param1:int=-1, param2:Object=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.qimopipoz=param1;
         this._value=param2;
         return;
      }

      private var qimopipoz:int;

      private var _value:Object;

      public function get type() : int {
         return this.qimopipoz;
      }

      public function set type(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qimopipoz=param1;
         return;
      }

      public function get value() : Object {
         return this._value;
      }

      public function set value(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._value=param1;
         return;
      }
   }
[/CLASS]
}