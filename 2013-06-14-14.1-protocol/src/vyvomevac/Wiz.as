package vyvomevac
{
   import flash.display.DisplayObject;


   public class Wiz extends Object
   {
      public function Wiz(param1:DisplayObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.target=param1;
         return;
      }

      protected var onComplete:Function;

      protected var target:DisplayObject;

      public function start() : void {
         return;
      }

      public function zuriwityk(param1:Function) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.onComplete=param1;
         return;
      }
   }

}