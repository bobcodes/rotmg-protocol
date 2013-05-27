package coh
{
   import flash.display.Sprite;
   import fidymu.CaretakerQueryDialog;
   import jezasowib.Reki;
   import jezasowib.Rop;
   import flash.display.Shape;
   import movimet.Lufub;
   import tulunyno.Hugyqufyq;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import nec.Sire;


   public class Nukamote extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nukamote(param1:String, param2:String) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.info=param2;
         this.lan.setStringBuilder(new Sire().setParams(param1));
         this.hizily();
         return;
      }

      private static const WIDTH:int = CaretakerQueryDialog.WIDTH-40;

      private static const HEIGHT:int = 40;

      private static const BEVEL:int = 2;

      private static const OUT:uint = 6052956;

      private static const copu:uint = 8355711;

      public var info:String;

      private const gokaqyh:Reki = new Reki();

      private const rect:Rop = new Rop(WIDTH,HEIGHT,BEVEL);

      private const background:Shape = this.gehepu();

      private const lan:Lufub = this.holasubuz();

      public const textChanged:Hugyqufyq = this.lan.textChanged;

      private function gehepu() : Shape {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         this.tizyf(_loc1_,OUT);
         addChild(_loc1_);
         return _loc1_;
      }

      private function tizyf(param1:Shape, param2:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.graphics.clear();
         param1.graphics.beginFill(param2);
         this.gokaqyh.jiwynu(0,0,this.rect,param1.graphics);
         param1.graphics.endFill();
         return;
      }

      private function holasubuz() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub().setSize(16).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE).setPosition(WIDTH/2,HEIGHT/2);
         _loc1_.mouseEnabled=false;
         addChild(_loc1_);
         return _loc1_;
      }

      private function hizily() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tizyf(this.background,copu);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tizyf(this.background,OUT);
         return;
      }
   }

}