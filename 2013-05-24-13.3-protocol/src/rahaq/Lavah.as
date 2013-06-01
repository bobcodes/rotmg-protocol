package rahaq
{
   import naqo.Wifuw;
   import dilywopavy.GTween;
   import flash.display.DisplayObject;


   public class Lavah extends Wifuw
   {
      public function Lavah(param1:DisplayObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      override public function start() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:GTween = new GTween(target,1,{alpha:0});
         _loc1_.onComplete=this.fykaqosuc;
         return;
      }

      private function fykaqosuc(param1:GTween) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:GTween = new GTween(target,1.4/2,{alpha:1});
         _loc2_.onComplete=this.venopa;
         return;
      }

      private function venopa(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         onComplete();
         return;
      }
   }

}