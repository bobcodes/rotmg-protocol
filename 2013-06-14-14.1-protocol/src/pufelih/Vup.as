package pufelih
{
   import flash.display.Sprite;
   import foqudowem.Hedubavyl;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;


   public class Vup extends Sprite implements Hedubavyl
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vup() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.lyqive();
         this.dozal();
         return;
      }

      public static var mefyfywog:Class = Cyfivut;

      private var misala:Sprite;

      private function lyqive() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new mefyfywog());
         return;
      }

      private function dozal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.misala=new Sprite();
         this.misala.graphics.beginFill(16711680,0);
         this.misala.graphics.drawRect(0,0,30,30);
         this.misala.graphics.endFill();
         this.misala.buttonMode=true;
         this.misala.x=550;
         this.misala.y=30;
         addEventListener(MouseEvent.CLICK,this.lyb);
         addChild(this.misala);
         return;
      }

      private function lyb(param1:MouseEvent) : void {
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