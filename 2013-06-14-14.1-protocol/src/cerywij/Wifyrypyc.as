package cerywij
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import flash.geom.ColorTransform;


   public class Wifyrypyc extends Sprite
   {
      public function Wifyrypyc(param1:int, param2:Sprite, param3:Bitmap) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.index=param1;
         this.dopojys(param2);
         if(param3)
         {
            this.bisywucy(param3);
         }
         return;
      }

      public var index:int;

      private var background:Sprite;

      private var icon:Bitmap;

      private function dopojys(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.background=param1;
         addChild(param1);
         return;
      }

      private function bisywucy(param1:Bitmap) : void {
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
         _loc2_.color=param1?Kog.filol:Kog.losecas;
         this.background.transform.colorTransform=_loc2_;
         return;
      }
   }

}