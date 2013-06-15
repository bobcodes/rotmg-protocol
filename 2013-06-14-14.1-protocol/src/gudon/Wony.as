package gudon
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import zynuqu.Timespan;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import flash.events.MouseEvent;


   public class Wony extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wony(param1:Timespan) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.timespan=param1;
         this.cades(param1);
         this.jidesyd();
         this.redraw();
         return;
      }

      private static const koty:int = 16567065;

      private static const pezybizir:int = 16777215;

      private static const cer:int = 11711154;

      public const selected:Qanyduk = new Qanyduk(Wony);

      private var timespan:Timespan;

      private var label:Guzowoja;

      private var pyqusu:Boolean;

      private var nopo:Boolean;

      private var kami:Boolean;

      public function lymaw() : Timespan {
         return this.timespan;
      }

      private function cades(param1:Timespan) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.label=new Guzowoja().setSize(20).setColor(16777215);
         this.label.setBold(true);
         this.label.setStringBuilder(new Kybidu().setParams(param1.getName()));
         this.label.x=2;
         addChild(this.label);
         return;
      }

      private function jidesyd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         addEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected.dispatch(this);
         return;
      }

      private function redraw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.pyqusu)
         {
            this.label.setColor(koty);
         }
         else
         {
            if((this.kami)||(this.nopo))
            {
               this.label.setColor(pezybizir);
            }
            else
            {
               this.label.setColor(cer);
            }
         }
         return;
      }

      public function gowek(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kami=param1;
         this.redraw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyqusu=true;
         this.redraw();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pyqusu=false;
         this.nopo=false;
         this.redraw();
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nopo=true;
         this.redraw();
         return;
      }

      private function honoraj(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nopo=false;
         this.redraw();
         return;
      }
   }

}