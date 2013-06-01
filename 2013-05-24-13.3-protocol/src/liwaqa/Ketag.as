package liwaqa
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;


   public class Ketag extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Ketag() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const Background:Class = Rov;

      private const bypiwaru:DisplayObject = this.gehepu();

      private function gehepu() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:DisplayObject = new Background();
         addChild(_loc1_);
         return _loc1_;
      }
   }

}