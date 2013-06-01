package mejuny
{
[CLASS1875]   import bolyta.Pacezylej;
   import barotuvy.GTween;
   import flash.display.DisplayObject;


   public class Gab extends Pacezylej
   {
      public function Gab(param1:DisplayObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      override public function start() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:GTween = new GTween(target,1,{alpha:0});
         _loc1_.onComplete=this.jelagyw;
         return;
      }

      private function jelagyw(param1:GTween) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:GTween = new GTween(target,1.4/2,{alpha:1});
         _loc2_.onComplete=this.nojokan;
         return;
      }

      private function nojokan(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         onComplete();
         return;
      }
   }
[/CLASS]
}