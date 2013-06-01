package behe
{
[CLASS990]   import flash.display.Sprite;
   import dob.Beqoq;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;


   public class Beryqi extends Sprite implements Beqoq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Beryqi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.havabej();
         this.rafyte();
         return;
      }

      public static var zycytad:Class = Kepeb;

      private var madinulub:Sprite;

      private function havabej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new zycytad());
         return;
      }

      private function rafyte() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.madinulub=new Sprite();
         this.madinulub.graphics.beginFill(16711680,0);
         this.madinulub.graphics.drawRect(0,0,30,30);
         this.madinulub.graphics.endFill();
         this.madinulub.buttonMode=true;
         this.madinulub.x=550;
         this.madinulub.y=30;
         addEventListener(MouseEvent.CLICK,this.pikymasa);
         addChild(this.madinulub);
         return;
      }

      private function pikymasa(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         parent.removeChild(this);
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         x=(param1.width-width)/2;
         y=(param1.height-height)/2;
         return;
      }
   }
[/CLASS]
}