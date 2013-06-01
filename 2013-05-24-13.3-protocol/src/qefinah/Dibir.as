package qefinah
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import flash.geom.ColorTransform;


   public class Dibir extends Sprite
   {
      public function Dibir(param1:int, param2:Sprite, param3:Bitmap) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.index=param1;
         this.wibawuzyne(param2);
         if(param3)
         {
            this.pygirucas(param3);
         }
         return;
      }

      public var index:int;

      private var background:Sprite;

      private var icon:Bitmap;

      private function wibawuzyne(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.background=param1;
         addChild(param1);
         return;
      }

      private function pygirucas(param1:Bitmap) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.icon=param1;
         param1.x=param1.x-5;
         param1.y=param1.y-11;
         addChild(param1);
         return;
      }

      public function setSelected(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = this.background.transform.colorTransform;
         _loc2_.color=param1?Lased.zysohygo:Lased.topanywiza;
         this.background.transform.colorTransform=_loc2_;
         return;
      }
   }

}