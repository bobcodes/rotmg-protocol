package difu
{
   import flash.display.Sprite;
   import kimejakim.Tijuj;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;


   public class Huqu extends Sprite implements Tijuj
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Huqu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.bazijuram();
         this.nagelywig();
         return;
      }

      public static var lukahot:Class = Wypa;

      private var gemynu:Sprite;

      private function bazijuram() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new lukahot());
         return;
      }

      private function nagelywig() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gemynu=new Sprite();
         this.gemynu.graphics.beginFill(16711680,0);
         this.gemynu.graphics.drawRect(0,0,30,30);
         this.gemynu.graphics.endFill();
         this.gemynu.buttonMode=true;
         this.gemynu.x=550;
         this.gemynu.y=30;
         addEventListener(MouseEvent.CLICK,this.onClose);
         addChild(this.gemynu);
         return;
      }

      private function onClose(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         parent.removeChild(this);
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         x=(param1.width-width)/2;
         y=(param1.height-height)/2;
         return;
      }
   }

}