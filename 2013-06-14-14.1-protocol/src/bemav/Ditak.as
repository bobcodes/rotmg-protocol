package bemav
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hyjabu.Vuresiwyn;
   import hyjabu.Tac;
   import flash.events.MouseEvent;
   import flash.events.Event;


   final class Ditak extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Ditak() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const WIDTH:int = Bomuru.WIDTH;

      public static const BEVEL:int = Bomuru.BEVEL;

      public static const pybywy:int = Bomuru.pybywy;

      public const tojive:Qanyduk = new Qanyduk(int);

      public const rect:Vuresiwyn = new Vuresiwyn(WIDTH-pybywy*2,0,BEVEL);

      private const vig:Tac = new Tac();

      private var docupyfes:Number;

      private var pyqusu:Boolean;

      private var nopo:Boolean;

      public function redraw() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = (this.pyqusu)||(this.nopo)?16767876:13421772;
         graphics.clear();
         graphics.beginFill(_loc1_);
         this.vig.raty(pybywy,0,this.rect,graphics);
         graphics.endFill();
         return;
      }

      public function jidesyd() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      public function zeweci() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.honoraj();
         return;
      }

      private function onMouseDown(param1:MouseEvent=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nopo=true;
         this.docupyfes=parent.mouseY-y;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         addEventListener(Event.ENTER_FRAME,this.dereponab);
         this.redraw();
         return;
      }

      private function honoraj(param1:MouseEvent=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nopo=false;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         removeEventListener(Event.ENTER_FRAME,this.dereponab);
         this.redraw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pyqusu=true;
         this.redraw();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyqusu=false;
         this.redraw();
         return;
      }

      private function dereponab(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tojive.dispatch(int(parent.mouseY-this.docupyfes));
         return;
      }
   }

}