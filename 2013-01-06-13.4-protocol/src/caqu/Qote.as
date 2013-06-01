package caqu
{
[CLASS892]   import flash.display.Sprite;
   import tinava.Dab;
   import dyvelo.Timespan;
   import pudev.Capitu;
   import totuhare.Zufi;
   import flash.events.MouseEvent;


   public class Qote extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qote(param1:Timespan) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.timespan=param1;
         this.qaqazu(param1);
         this.fejysu();
         this.redraw();
         return;
      }

      private static const wukec:int = 16567065;

      private static const vigyko:int = 16777215;

      private static const lalu:int = 11711154;

      public const selected:Dab = new Dab(Qote);

      private var timespan:Timespan;

      private var label:Capitu;

      private var dimopu:Boolean;

      private var balozata:Boolean;

      private var gawuly:Boolean;

      public function qase() : Timespan {
         return this.timespan;
      }

      private function qaqazu(param1:Timespan) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.label=new Capitu().setSize(20).setColor(16777215);
         this.label.setBold(true);
         this.label.setStringBuilder(new Zufi().setParams(param1.getName()));
         this.label.x=2;
         addChild(this.label);
         return;
      }

      private function fejysu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         addEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected.dispatch(this);
         return;
      }

      private function redraw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.dimopu)
         {
            this.label.setColor(wukec);
         }
         else
         {
            if((this.gawuly)||(this.balozata))
            {
               this.label.setColor(vigyko);
            }
            else
            {
               this.label.setColor(lalu);
            }
         }
         return;
      }

      public function ryb(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gawuly=param1;
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dimopu=false;
         this.balozata=false;
         this.redraw();
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.balozata=true;
         this.redraw();
         return;
      }

      private function jefazus(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.balozata=false;
         this.redraw();
         return;
      }
   }
[/CLASS]
}