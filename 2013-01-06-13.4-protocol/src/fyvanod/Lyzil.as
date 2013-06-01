package fyvanod
{
[CLASS1553]   import flash.display.Sprite;
   import jat.CaretakerQueryDialog;
   import rorijof.Jyviv;
   import rorijof.Simohoke;
   import flash.display.Shape;
   import pudev.Capitu;
   import tinava.Dab;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import totuhare.Zufi;


   public class Lyzil extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Lyzil(param1:String, param2:String) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.info=param2;
         this.pizibi.setStringBuilder(new Zufi().setParams(param1));
         this.divolun();
         return;
      }

      private static const WIDTH:int = CaretakerQueryDialog.WIDTH-40;

      private static const HEIGHT:int = 40;

      private static const BEVEL:int = 2;

      private static const OUT:uint = 6052956;

      private static const bygygabo:uint = 8355711;

      public var info:String;

      private const cykepydiz:Jyviv = new Jyviv();

      private const rect:Simohoke = new Simohoke(WIDTH,HEIGHT,BEVEL);

      private const background:Shape = this.fawug();

      private const pizibi:Capitu = this.mamecusetyw();

      public const textChanged:Dab = this.pizibi.textChanged;

      private function fawug() : Shape {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         this.qafu(_loc1_,OUT);
         addChild(_loc1_);
         return _loc1_;
      }

      private function qafu(param1:Shape, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.graphics.clear();
         param1.graphics.beginFill(param2);
         this.cykepydiz.qyzejib(0,0,this.rect,param1.graphics);
         param1.graphics.endFill();
         return;
      }

      private function mamecusetyw() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu().setSize(16).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE).setPosition(WIDTH/2,HEIGHT/2);
         _loc1_.mouseEnabled=false;
         addChild(_loc1_);
         return _loc1_;
      }

      private function divolun() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qafu(this.background,bygygabo);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qafu(this.background,OUT);
         return;
      }
   }
[/CLASS]
}