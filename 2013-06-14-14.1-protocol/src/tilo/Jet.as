package tilo
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;


   public class Jet extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jet() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const Background:Class = Cizo;

      private const garu:DisplayObject = this.wutas();

      private function wutas() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:DisplayObject = new Background();
         addChild(_loc1_);
         return _loc1_;
      }
   }

}