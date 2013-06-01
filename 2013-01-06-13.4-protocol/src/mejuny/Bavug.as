package mejuny
{
[CLASS1876]   import bolyta.Pacezylej;
   import barotuvy.GTween;
   import flash.display.DisplayObject;


   public class Bavug extends Pacezylej
   {
      public function Bavug(param1:DisplayObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }

      override public function start() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:GTween = new GTween(target,1,{alpha:1});
         _loc1_.onComplete=this.jelagyw;
         return;
      }

      private function jelagyw(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return;
      }
   }
[/CLASS]
}