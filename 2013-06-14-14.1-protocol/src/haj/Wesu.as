package haj
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import hyjabu.Tac;
   import hyjabu.Vuresiwyn;
   import hivysif.Guzowoja;
   import flash.text.TextFieldAutoSize;
   import flashx.textLayout.formats.VerticalAlign;
   import jediwip.Kybidu;


   public class Wesu extends Sprite
   {
      public function Wesu(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         addChild(this.sym());
         addChild(this.makeText(param1));
         return;
      }

      private const WIDTH:int = 174;

      private const HEIGHT:int = 42;

      private const BEVEL:int = 4;

      private const coropo:int = 6;

      private function sym() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         this.mome(_loc1_);
         return _loc1_;
      }

      private function mome(param1:Shape) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Tac = new Tac();
         var _loc3_:Vuresiwyn = new Vuresiwyn(this.WIDTH,this.HEIGHT,this.BEVEL);
         var _loc4_:int = this.HEIGHT/2;
         param1.graphics.beginFill(14737632);
         _loc2_.raty(0,0,_loc3_,param1.graphics);
         param1.graphics.endFill();
         param1.graphics.beginFill(14737632);
         param1.graphics.moveTo(0,_loc4_-this.coropo);
         param1.graphics.lineTo(-this.coropo,_loc4_);
         param1.graphics.lineTo(0,_loc4_+this.coropo);
         param1.graphics.endFill();
         return;
      }

      private function makeText(param1:String) : Guzowoja {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Guzowoja = new Guzowoja().setSize(16).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(VerticalAlign.MIDDLE).setPosition(this.WIDTH/2,this.HEIGHT/2);
         _loc2_.setStringBuilder(new Kybidu().setParams(param1));
         return _loc2_;
      }
   }

}