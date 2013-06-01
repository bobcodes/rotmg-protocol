package gicuzum
{
[CLASS1685]   import flash.display.Sprite;
   import tinava.Dab;
   import rorijof.Simohoke;
   import rorijof.Jyviv;
   import flash.events.MouseEvent;
   import flash.events.Event;


   final class Padimu extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Padimu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const WIDTH:int = Zacorafyg.WIDTH;

      public static const BEVEL:int = Zacorafyg.BEVEL;

      public static const bykize:int = Zacorafyg.bykize;

      public const fub:Dab = new Dab(int);

      public const rect:Simohoke = new Simohoke(WIDTH-bykize*2,0,BEVEL);

      private const cykepydiz:Jyviv = new Jyviv();

      private var qygehyza:Number;

      private var dimopu:Boolean;

      private var balozata:Boolean;

      public function redraw() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = (this.dimopu)||(this.balozata)?16767876:13421772;
         graphics.clear();
         graphics.beginFill(_loc1_);
         this.cykepydiz.qyzejib(bykize,0,this.rect,graphics);
         graphics.endFill();
         return;
      }

      public function fejysu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      public function finata() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.jefazus();
         return;
      }

      private function onMouseDown(param1:MouseEvent=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.balozata=true;
         this.qygehyza=parent.mouseY-y;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         addEventListener(Event.ENTER_FRAME,this.mumapecon);
         this.redraw();
         return;
      }

      private function jefazus(param1:MouseEvent=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.balozata=false;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         removeEventListener(Event.ENTER_FRAME,this.mumapecon);
         this.redraw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dimopu=true;
         this.redraw();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dimopu=false;
         this.redraw();
         return;
      }

      private function mumapecon(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fub.dispatch(int(parent.mouseY-this.qygehyza));
         return;
      }
   }
[/CLASS]
}