package qazoz
{
   import kedohuz.Wizaniq;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import kabam.rotmg.assets.services.Rogih;
   import com.company.util.MoreColorUtil;
   import movimet.Lufub;
   import nec.Nara;
   import nec.Sire;
   import flash.display.Bitmap;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import ruwysepyd.Junefolef;
   import com.company.assembleegameclient.util.Currency;
   import com.company.util.Tizulo;
   import flash.events.MouseEvent;
   import nec.Zirewe;


   public class Nyzur extends Wizaniq
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nyzur(param1:String, param2:int, param3:int, param4:int) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.tekytobu=new Nara("");
         this.hicawel=new Sire();
         new Vector.<IGraphicsData>(3)[0]=this.sysozacad;
         new Vector.<IGraphicsData>(3)[1]=this.jepalo;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         super();
         this.kyro=param1;
         this.text=new Lufub().setSize(param2).setColor(3552822).setBold(true);
         this.jiguvovu.push(this.text.textChanged);
         var _loc5_:Zirewe = param1!=""?this.hicawel.setParams(param1,{cost:param3.toString()}):this.tekytobu.setString(param3.toString());
         this.text.setStringBuilder(_loc5_);
         this.jiguvovu.complete.add(this.nunalibu);
         this.jiguvovu.complete.addOnce(this.zozyjo);
         addChild(this.text);
         this.icon=new Bitmap();
         addChild(this.icon);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.setPrice(param3,param4);
         return;
      }

      private static const BEVEL:int = 4;

      private static const pyzifok:int = 2;

      public static const kumikuni:BitmapData = Rogih.makeCoin();

      public static const fame:BitmapData = Rogih.qilo();

      public static const gopa:BitmapData = Rogih.hof();

      private static const midovem:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.lyheq);

      public var kyro:String;

      public var text:Lufub;

      private var tekytobu:Nara;

      private var hicawel:Sire;

      public var icon:Bitmap;

      public var price:int = -1;

      public var currency:int = -1;

      public var fugyf:int = -1;

      private const sysozacad:GraphicsSolidFill = new GraphicsSolidFill(16777215,1);

      private const sutym:GraphicsSolidFill = new GraphicsSolidFill(8355711,1);

      private const jepalo:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());

      private const graphicsData:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      private const jiguvovu:Junefolef = new Junefolef();

      override public function setPrice(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(this.price==param1)||!(this.currency==param2))
         {
            this.price=param1;
            this.currency=param2;
            this.tekytobu.setString(param1.toString());
            this.hicawel.setParams(this.kyro,{cost:param1.toString()});
            this.nunalibu();
         }
         return;
      }

      public function ciqunemid() : int {
         return this.price;
      }

      override public function setEnabled(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1!=mouseEnabled)
         {
            mouseEnabled=param1;
            filters=param1?[]:[midovem];
            this.draw();
         }
         return;
      }

      override public function setWidth(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fugyf=param1;
         this.nunalibu();
         return;
      }

      private function nunalibu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hinivytu();
         this.qisogapy();
         this.mejube();
         this.draw();
         return;
      }

      private function zozyjo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nunalibu();
         qecysiga.dispatch();
         return;
      }

      private function qisogapy() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         switch(this.currency)
         {
            case Currency.fejubu:
               this.icon.bitmapData=kumikuni;
               break;
            case Currency.FAME:
               this.icon.bitmapData=fame;
               break;
            case Currency.kizuz:
               this.icon.bitmapData=gopa;
               break;
            default:
               this.icon.bitmapData=null;
         }
         this.nofema();
         return;
      }

      private function mejube() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Tizulo.vomynaqu(this.jepalo);
         Tizulo.woforyzib(0,0,this.tuf(),this.getHeight(),BEVEL,[1,1,1,1],this.jepalo);
         return;
      }

      private function hinivytu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.text.x=(this.tuf()-this.icon.width-this.text.width-pyzifok)*0.5;
         this.text.y=4;
         return;
      }

      private function nofema() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.icon.x=this.text.x+this.text.width+pyzifok;
         this.icon.y=(this.getHeight()-this.icon.height-1)*0.5;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sysozacad.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sysozacad.color=16777215;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.graphicsData[0]=mouseEnabled?this.sysozacad:this.sutym;
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData);
         return;
      }

      private function tuf() : int {
         return Math.max(this.fugyf,this.text.width+this.icon.width+3*pyzifok);
      }

      private function getHeight() : int {
         return this.text.height+8;
      }
   }

}