package fyvanod
{
[CLASS1555]   import flash.display.Sprite;
   import flash.display.Shape;
   import pudev.Capitu;
   import flash.text.TextFieldAutoSize;
   import flashx.textLayout.formats.VerticalAlign;
   import totuhare.Zufi;
   import rorijof.Jyviv;
   import rorijof.Simohoke;


   public class Citufe extends Sprite
   {
      public function Citufe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(this.qolejip);
         addChild(this.pizibi);
         return;
      }

      private const WIDTH:int = 235;

      private const HEIGHT:int = 252;

      private const BEVEL:int = 4;

      private const juzilohat:int = 6;

      private const vuhaqeh:int = 25;

      private const bykize:int = 8;

      private const qolejip:Shape = new Shape();

      private const pizibi:Capitu = this.makeText();

      private function makeText() : Capitu {
         var _loc1_:Capitu = new Capitu().setSize(16).setLeading(3).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(VerticalAlign.TOP).setMultiLine(true).setWordWrap(true).setPosition(this.bykize,this.bykize).setTextWidth(this.WIDTH-2*this.bykize).setTextHeight(this.HEIGHT-2*this.bykize);
         return _loc1_;
      }

      public function rike(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pizibi.setStringBuilder(new Zufi().setParams(param1));
         this.pizibi.textChanged.add(this.fugygij);
         return;
      }

      private function fugygij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qimatuve();
         return;
      }

      private function qimatuve() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Jyviv = new Jyviv();
         var _loc2_:Simohoke = new Simohoke(this.WIDTH,this.pizibi.height+16,this.BEVEL);
         this.qolejip.graphics.beginFill(14737632);
         _loc1_.qyzejib(0,0,_loc2_,this.qolejip.graphics);
         this.qolejip.graphics.endFill();
         this.qolejip.graphics.beginFill(14737632);
         this.qolejip.graphics.moveTo(this.vuhaqeh-this.juzilohat,0);
         this.qolejip.graphics.lineTo(this.vuhaqeh,-this.juzilohat);
         this.qolejip.graphics.lineTo(this.vuhaqeh+this.juzilohat,0);
         this.qolejip.graphics.endFill();
         return;
      }
   }
[/CLASS]
}