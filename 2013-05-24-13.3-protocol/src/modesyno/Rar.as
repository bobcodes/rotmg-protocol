package modesyno
{


   public class Rar extends Object
   {
      public function Rar(param1:int=-1, param2:Object=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.cuwiqytid=param1;
         this._value=param2;
         return;
      }

      private var cuwiqytid:int;

      private var _value:Object;

      public function get type() : int {
         return this.cuwiqytid;
      }

      public function set type(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cuwiqytid=param1;
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

}