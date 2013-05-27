package qazoz
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import jezasowib.Rop;
   import jezasowib.Reki;
   import flash.events.MouseEvent;


   final class Qememinyv extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Qememinyv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const WIDTH:int = Mibifose.WIDTH;

      public static const BEVEL:int = Mibifose.BEVEL+Mibifose.pyzifok*0.5;

      public const siperu:Hugyqufyq = new Hugyqufyq(int);

      public const rect:Rop = new Rop(WIDTH,0,BEVEL);

      private const gokaqyh:Reki = new Reki();

      public function redraw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.beginFill(5526612);
         this.gokaqyh.jiwynu(0,0,this.rect,graphics);
         graphics.endFill();
         return;
      }

      public function gyp() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addEventListener(MouseEvent.CLICK,this.zeg);
         return;
      }

      public function sasamyq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeEventListener(MouseEvent.CLICK,this.zeg);
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.siperu.dispatch(int(mouseY));
         return;
      }
   }

}