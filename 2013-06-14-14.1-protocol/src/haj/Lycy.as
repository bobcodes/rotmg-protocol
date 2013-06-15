package haj
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import hivysif.Guzowoja;
   import flash.text.TextFieldAutoSize;
   import flashx.textLayout.formats.VerticalAlign;
   import jediwip.Kybidu;
   import hyjabu.Tac;
   import hyjabu.Vuresiwyn;


   public class Lycy extends Sprite
   {
      public function Lycy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(this.gyqe);
         addChild(this.gusilyk);
         return;
      }

      private const WIDTH:int = 235;

      private const HEIGHT:int = 252;

      private const BEVEL:int = 4;

      private const coropo:int = 6;

      private const sebatyf:int = 25;

      private const pybywy:int = 8;

      private const gyqe:Shape = new Shape();

      private const gusilyk:Guzowoja = this.makeText();

      private function makeText() : Guzowoja {
         var _loc1_:Guzowoja = new Guzowoja().setSize(16).setLeading(3).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(VerticalAlign.TOP).setMultiLine(true).setWordWrap(true).setPosition(this.pybywy,this.pybywy).setTextWidth(this.WIDTH-2*this.pybywy).setTextHeight(this.HEIGHT-2*this.pybywy);
         return _loc1_;
      }

      public function kenadyb(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gusilyk.setStringBuilder(new Kybidu().setParams(param1));
         this.gusilyk.textChanged.add(this.cucegatyh);
         return;
      }

      private function cucegatyh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sym();
         return;
      }

      private function sym() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Tac = new Tac();
         var _loc2_:Vuresiwyn = new Vuresiwyn(this.WIDTH,this.gusilyk.height+16,this.BEVEL);
         this.gyqe.graphics.beginFill(14737632);
         _loc1_.raty(0,0,_loc2_,this.gyqe.graphics);
         this.gyqe.graphics.endFill();
         this.gyqe.graphics.beginFill(14737632);
         this.gyqe.graphics.moveTo(this.sebatyf-this.coropo,0);
         this.gyqe.graphics.lineTo(this.sebatyf,-this.coropo);
         this.gyqe.graphics.lineTo(this.sebatyf+this.coropo,0);
         this.gyqe.graphics.endFill();
         return;
      }
   }

}