package coh
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import movimet.Lufub;
   import flash.text.TextFieldAutoSize;
   import flashx.textLayout.formats.VerticalAlign;
   import nec.Sire;
   import jezasowib.Reki;
   import jezasowib.Rop;


   public class Fofipur extends Sprite
   {
      public function Fofipur() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(this.zyqi);
         addChild(this.lan);
         return;
      }

      private const WIDTH:int = 235;

      private const HEIGHT:int = 252;

      private const BEVEL:int = 4;

      private const lewok:int = 6;

      private const kodi:int = 25;

      private const pyzifok:int = 8;

      private const zyqi:Shape = new Shape();

      private const lan:Lufub = this.makeText();

      private function makeText() : Lufub {
         var _loc1_:Lufub = new Lufub().setSize(16).setLeading(3).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(VerticalAlign.TOP).setMultiLine(true).setWordWrap(true).setPosition(this.pyzifok,this.pyzifok).setTextWidth(this.WIDTH-2*this.pyzifok).setTextHeight(this.HEIGHT-2*this.pyzifok);
         return _loc1_;
      }

      public function sonydiw(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lan.setStringBuilder(new Sire().setParams(param1));
         this.lan.textChanged.add(this.ricozo);
         return;
      }

      private function ricozo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hivikocyj();
         return;
      }

      private function hivikocyj() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Reki = new Reki();
         var _loc2_:Rop = new Rop(this.WIDTH,this.lan.height+16,this.BEVEL);
         this.zyqi.graphics.beginFill(14737632);
         _loc1_.jiwynu(0,0,_loc2_,this.zyqi.graphics);
         this.zyqi.graphics.endFill();
         this.zyqi.graphics.beginFill(14737632);
         this.zyqi.graphics.moveTo(this.kodi-this.lewok,0);
         this.zyqi.graphics.lineTo(this.kodi,-this.lewok);
         this.zyqi.graphics.lineTo(this.kodi+this.lewok,0);
         this.zyqi.graphics.endFill();
         return;
      }
   }

}