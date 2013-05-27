package qazoz
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import jezasowib.Rop;
   import jezasowib.Reki;
   import flash.events.MouseEvent;
   import flash.events.Event;


   final class Dygomuwu extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Dygomuwu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const WIDTH:int = Mibifose.WIDTH;

      public static const BEVEL:int = Mibifose.BEVEL;

      public static const pyzifok:int = Mibifose.pyzifok;

      public const qotiw:Hugyqufyq = new Hugyqufyq(int);

      public const rect:Rop = new Rop(WIDTH-pyzifok*2,0,BEVEL);

      private const gokaqyh:Reki = new Reki();

      private var hujasem:Number;

      private var nubi:Boolean;

      private var filihu:Boolean;

      public function redraw() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = (this.nubi)||(this.filihu)?16767876:13421772;
         graphics.clear();
         graphics.beginFill(_loc1_);
         this.gokaqyh.jiwynu(pyzifok,0,this.rect,graphics);
         graphics.endFill();
         return;
      }

      public function gyp() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      public function sasamyq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.gomivy();
         return;
      }

      private function onMouseDown(param1:MouseEvent=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.filihu=true;
         this.hujasem=parent.mouseY-y;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         addEventListener(Event.ENTER_FRAME,this.nuparive);
         this.redraw();
         return;
      }

      private function gomivy(param1:MouseEvent=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.filihu=false;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         removeEventListener(Event.ENTER_FRAME,this.nuparive);
         this.redraw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nubi=true;
         this.redraw();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nubi=false;
         this.redraw();
         return;
      }

      private function nuparive(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qotiw.dispatch(int(parent.mouseY-this.hujasem));
         return;
      }
   }

}