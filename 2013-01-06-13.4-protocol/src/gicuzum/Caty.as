package gicuzum
{
[CLASS781]   import codudij.Ramy;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import kabam.rotmg.assets.services.Dejuceb;
   import com.company.util.MoreColorUtil;
   import pudev.Capitu;
   import totuhare.Javo;
   import totuhare.Zufi;
   import flash.display.Bitmap;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import tidi.Dak;
   import com.company.assembleegameclient.util.Currency;
   import com.company.util.Nosupygu;
   import flash.events.MouseEvent;
   import totuhare.Qebar;


   public class Caty extends Ramy
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Caty(param1:String, param2:int, param3:int, param4:int) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.walu=new Javo("");
         this.febup=new Zufi();
         new Vector.<IGraphicsData>(3)[0]=this.behag;
         new Vector.<IGraphicsData>(3)[1]=this.vokyhel;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         super();
         this.qupibi=param1;
         this.text=new Capitu().setSize(param2).setColor(3552822).setBold(true);
         this.juwocez.push(this.text.textChanged);
         var _loc5_:Qebar = param1!=""?this.febup.setParams(param1,{cost:param3.toString()}):this.walu.setString(param3.toString());
         this.text.setStringBuilder(_loc5_);
         this.juwocez.complete.add(this.nepalacu);
         this.juwocez.complete.addOnce(this.kijam);
         addChild(this.text);
         this.icon=new Bitmap();
         addChild(this.icon);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.setPrice(param3,param4);
         return;
      }

      private static const BEVEL:int = 4;

      private static const bykize:int = 2;

      public static const lidih:BitmapData = Dejuceb.makeCoin();

      public static const fame:BitmapData = Dejuceb.hycejomo();

      public static const viwyriho:BitmapData = Dejuceb.celudico();

      private static const tipekot:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.calysymes);

      public var qupibi:String;

      public var text:Capitu;

      private var walu:Javo;

      private var febup:Zufi;

      public var icon:Bitmap;

      public var price:int = -1;

      public var currency:int = -1;

      public var qej:int = -1;

      private const behag:GraphicsSolidFill = new GraphicsSolidFill(16777215,1);

      private const lofiwunu:GraphicsSolidFill = new GraphicsSolidFill(8355711,1);

      private const vokyhel:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());

      private const graphicsData:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      private const juwocez:Dak = new Dak();

      override public function setPrice(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(this.price==param1)||!(this.currency==param2))
         {
            this.price=param1;
            this.currency=param2;
            this.walu.setString(param1.toString());
            this.febup.setParams(this.qupibi,{cost:param1.toString()});
            this.nepalacu();
         }
         return;
      }

      public function jovubyj() : int {
         return this.price;
      }

      override public function setEnabled(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!=mouseEnabled)
         {
            mouseEnabled=param1;
            filters=param1?[]:[tipekot];
            this.draw();
         }
         return;
      }

      override public function setWidth(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qej=param1;
         this.nepalacu();
         return;
      }

      private function nepalacu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hiput();
         this.bas();
         this.dote();
         this.draw();
         return;
      }

      private function kijam() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nepalacu();
         necilywe.dispatch();
         return;
      }

      private function bas() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         switch(null)
         {
            case Currency.vusap:
               this.icon.bitmapData=lidih;
               break;
            case Currency.FAME:
               this.icon.bitmapData=fame;
               break;
            case Currency.kecevy:
               this.icon.bitmapData=viwyriho;
               break;
            default:
               this.icon.bitmapData=null;
         }
         this.nyrawis();
         return;
      }

      private function dote() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Nosupygu.jyrodepu(this.vokyhel);
         Nosupygu.secebeq(0,0,this.wutusy(),this.getHeight(),BEVEL,[1,1,1,1],this.vokyhel);
         return;
      }

      private function hiput() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text.x=(this.wutusy()-this.icon.width-this.text.width-bykize)*0.5;
         this.text.y=4;
         return;
      }

      private function nyrawis() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.icon.x=this.text.x+this.text.width+bykize;
         this.icon.y=(this.getHeight()-this.icon.height-1)*0.5;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.behag.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.behag.color=16777215;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.graphicsData[0]=mouseEnabled?this.behag:this.lofiwunu;
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData);
         return;
      }

      private function wutusy() : int {
         return Math.max(this.qej,this.text.width+this.icon.width+3*bykize);
      }

      private function getHeight() : int {
         return this.text.height+8;
      }
   }
[/CLASS]
}