package pejycaj
{
   import flash.display.Sprite;
   import hivysif.Liwyny;
   import mukyrosu.Qanyduk;
   import wohy.Meso;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;


   public class Hyjofo extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hyjofo(param1:Meso) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.label=this.cades();
         super();
         this.filter=param1;
         this.label.setStringBuilder(new Kybidu().setParams(param1.getName()));
         addChild(this.label);
         this.jidesyd();
         return;
      }

      private static const koty:int = 16567065;

      private static const pezybizir:int = 16777215;

      private static const cer:int = 11711154;

      public var label:Liwyny;

      public const harap:Qanyduk = this.label.textChanged;

      public const selected:Qanyduk = new Qanyduk(Hyjofo);

      private var filter:Meso;

      private var pyqusu:Boolean;

      private var nopo:Boolean;

      private var kami:Boolean = false;

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zeweci();
         return;
      }

      public function cycawyjaq() : Meso {
         return this.filter;
      }

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kami=param1;
         this.redraw();
         return;
      }

      private function jidesyd() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         addEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      private function zeweci() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         [OFS17]removeEventListener[/OFS][OFS17]([/OFS][OFS8]MouseEvent[/OFS].[OFS10]MOUSE_OVER[/OFS][OFS17],[/OFS]this.[OFS14]onMouseOver[/OFS][OFS17])[/OFS];
         [OFS31]removeEventListener[/OFS][OFS31]([/OFS][OFS22]MouseEvent[/OFS].[OFS24]MOUSE_OUT[/OFS][OFS31],[/OFS]this.[OFS28]onMouseOut[/OFS][OFS31])[/OFS];
         [OFS45]removeEventListener[/OFS][OFS45]([/OFS][OFS36]MouseEvent[/OFS].[OFS38]MOUSE_DOWN[/OFS][OFS45],[/OFS]this.[OFS42]onMouseDown[/OFS][OFS45])[/OFS];
         [OFS59]removeEventListener[/OFS][OFS59]([/OFS][OFS50]MouseEvent[/OFS].[OFS52]MOUSE_UP[/OFS][OFS59],[/OFS]this.[OFS56]honoraj[/OFS][OFS59])[/OFS];
         [OFS72]removeEventListener[/OFS][OFS72]([/OFS][OFS64]MouseEvent[/OFS].[OFS66]CLICK[/OFS][OFS72],[/OFS]this.[OFS69]zug[/OFS][OFS72])[/OFS];
         [OFS75]return[/OFS];
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.kami)
         {
            this.selected.dispatch(this);
         }
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

      private function honoraj(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nopo=false;
         this.redraw();
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nopo=true;
         this.redraw();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyqusu=false;
         this.nopo=false;
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

      private function cades() : Liwyny {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Liwyny = null;
         _loc1_=new Liwyny();
         _loc1_.setBold(true).setColor(11776947).setSize(20);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         return _loc1_;
      }
   }

}