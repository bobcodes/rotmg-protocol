package fudep
{


   public class Kedor extends Joqi
   {
      public function Kedor(param1:int, param2:Function, ... rest) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.callback=param2;
         this.RotmgParameters=rest;
         return;
      }

      public var callback:Function;

      public var RotmgParameters:Array;

      override protected function run() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.callback.apply(this.RotmgParameters);
         return;
      }

      override protected function onDestroyed() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.callback=null;
         this.RotmgParameters=null;
         return;
      }
   }

}