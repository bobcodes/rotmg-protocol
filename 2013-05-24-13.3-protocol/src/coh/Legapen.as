package coh
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import jezasowib.Reki;
   import jezasowib.Rop;
   import movimet.Lufub;
   import flash.text.TextFieldAutoSize;
   import flashx.textLayout.formats.VerticalAlign;
   import nec.Sire;


   public class Legapen extends Sprite
   {
      public function Legapen(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         addChild(this.hivikocyj());
         addChild(this.makeText(param1));
         return;
      }

      private const WIDTH:int = 174;

      private const HEIGHT:int = 42;

      private const BEVEL:int = 4;

      private const lewok:int = 6;

      private function hivikocyj() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         this.tupyd(_loc1_);
         return _loc1_;
      }

      private function tupyd(param1:Shape) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Reki = new Reki();
         var _loc3_:Rop = new Rop(this.WIDTH,this.HEIGHT,this.BEVEL);
         var _loc4_:int = this.HEIGHT/2;
         param1.graphics.beginFill(14737632);
         _loc2_.jiwynu(0,0,_loc3_,param1.graphics);
         param1.graphics.endFill();
         param1.graphics.beginFill(14737632);
         param1.graphics.moveTo(0,_loc4_-this.lewok);
         param1.graphics.lineTo(-this.lewok,_loc4_);
         param1.graphics.lineTo(0,_loc4_+this.lewok);
         param1.graphics.endFill();
         return;
      }

      private function makeText(param1:String) : Lufub {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Lufub = new Lufub().setSize(16).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(VerticalAlign.MIDDLE).setPosition(this.WIDTH/2,this.HEIGHT/2);
         _loc2_.setStringBuilder(new Sire().setParams(param1));
         return _loc2_;
      }
   }

}