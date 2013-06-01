package fyvanod
{
[CLASS1554]   import flash.display.Sprite;
   import flash.display.Shape;
   import rorijof.Jyviv;
   import rorijof.Simohoke;
   import pudev.Capitu;
   import flash.text.TextFieldAutoSize;
   import flashx.textLayout.formats.VerticalAlign;
   import totuhare.Zufi;


   public class Dade extends Sprite
   {
      public function Dade(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         addChild(this.qimatuve());
         addChild(this.makeText(param1));
         return;
      }

      private const WIDTH:int = 174;

      private const HEIGHT:int = 42;

      private const BEVEL:int = 4;

      private const juzilohat:int = 6;

      private function qimatuve() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         this.ritypor(_loc1_);
         return _loc1_;
      }

      private function ritypor(param1:Shape) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Jyviv = new Jyviv();
         var _loc3_:Simohoke = new Simohoke(this.WIDTH,this.HEIGHT,this.BEVEL);
         var _loc4_:int = this.HEIGHT/2;
         param1.graphics.beginFill(14737632);
         _loc2_.qyzejib(0,0,_loc3_,param1.graphics);
         param1.graphics.endFill();
         param1.graphics.beginFill(14737632);
         param1.graphics.moveTo(0,_loc4_-this.juzilohat);
         param1.graphics.lineTo(-this.juzilohat,_loc4_);
         param1.graphics.lineTo(0,_loc4_+this.juzilohat);
         param1.graphics.endFill();
         return;
      }

      private function makeText(param1:String) : Capitu {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Capitu = new Capitu().setSize(16).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(VerticalAlign.MIDDLE).setPosition(this.WIDTH/2,this.HEIGHT/2);
         _loc2_.setStringBuilder(new Zufi().setParams(param1));
         return _loc2_;
      }
   }
[/CLASS]
}