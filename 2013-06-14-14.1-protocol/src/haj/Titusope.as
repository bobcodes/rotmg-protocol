package haj
{
   import flash.display.Sprite;
   import racitagy.CaretakerQueryDialog;
   import hyjabu.Tac;
   import hyjabu.Vuresiwyn;
   import flash.display.Shape;
   import hivysif.Guzowoja;
   import mukyrosu.Qanyduk;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;


   public class Titusope extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Titusope(param1:String, param2:String) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.info=param2;
         this.gusilyk.setStringBuilder(new Kybidu().setParams(param1));
         this.jul();
         return;
      }

      private static const WIDTH:int = CaretakerQueryDialog.WIDTH-40;

      private static const HEIGHT:int = 40;

      private static const BEVEL:int = 2;

      private static const OUT:uint = 6052956;

      private static const dutiqig:uint = 8355711;

      public var info:String;

      private const vig:Tac = new Tac();

      private const rect:Vuresiwyn = new Vuresiwyn(WIDTH,HEIGHT,BEVEL);

      private const background:Shape = this.wutas();

      private const gusilyk:Guzowoja = this.movihemov();

      public const textChanged:Qanyduk = this.gusilyk.textChanged;

      private function wutas() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         this.guviqejy(_loc1_,OUT);
         addChild(_loc1_);
         return _loc1_;
      }

      private function guviqejy(param1:Shape, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.graphics.clear();
         param1.graphics.beginFill(param2);
         this.vig.raty(0,0,this.rect,param1.graphics);
         param1.graphics.endFill();
         return;
      }

      private function movihemov() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja().setSize(16).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE).setPosition(WIDTH/2,HEIGHT/2);
         _loc1_.mouseEnabled=false;
         addChild(_loc1_);
         return _loc1_;
      }

      private function jul() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.guviqejy(this.background,dutiqig);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.guviqejy(this.background,OUT);
         return;
      }
   }

}