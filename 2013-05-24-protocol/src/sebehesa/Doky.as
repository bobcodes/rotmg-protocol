package sebehesa
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import sibaworop.Timespan;
   import movimet.Lufub;
   import nec.Sire;
   import flash.events.MouseEvent;


   public class Doky extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Doky(param1:Timespan) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.timespan=param1;
         this.vyviquju(param1);
         this.gyp();
         this.redraw();
         return;
      }

      private static const wogo:int = 16567065;

      private static const toqycigal:int = 16777215;

      private static const mihecec:int = 11711154;

      public const selected:Hugyqufyq = new Hugyqufyq(Doky);

      private var timespan:Timespan;

      private var label:Lufub;

      private var nubi:Boolean;

      private var filihu:Boolean;

      private var murojywyh:Boolean;

      public function jusihuz() : Timespan {
         return this.timespan;
      }

      private function vyviquju(param1:Timespan) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.label=new Lufub().setSize(20).setColor(16777215);
         this.label.setBold(true);
         this.label.setStringBuilder(new Sire().setParams(param1.getName()));
         this.label.x=2;
         addChild(this.label);
         return;
      }

      private function gyp() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         addEventListener(MouseEvent.CLICK,this.zeg);
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected.dispatch(this);
         return;
      }

      private function redraw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.nubi)
         {
            this.label.setColor(wogo);
         }
         else
         {
            if((this.murojywyh)||(this.filihu))
            {
               this.label.setColor(toqycigal);
            }
            else
            {
               this.label.setColor(mihecec);
            }
         }
         return;
      }

      public function piloni(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.murojywyh=param1;
         this.redraw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nubi=true;
         this.redraw();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nubi=false;
         this.filihu=false;
         this.redraw();
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.filihu=true;
         this.redraw();
         return;
      }

      private function gomivy(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.filihu=false;
         this.redraw();
         return;
      }
   }

}