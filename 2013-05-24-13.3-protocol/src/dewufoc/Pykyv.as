package dewufoc
{


   public class Pykyv extends Mejerine
   {
      public function Pykyv(param1:int, param2:Function, ... rest) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.callback=param2;
         this.parameters=rest;
         return;
      }

      public var callback:Function;

      public var parameters:Array;

      override protected function run() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.callback.apply(this.parameters);
         return;
      }

      override protected function onDestroyed() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.callback=null;
         this.parameters=null;
         return;
      }
   }

}