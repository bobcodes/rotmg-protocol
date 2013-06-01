package gibu
{
[CLASS1895]   import flash.display.Sprite;
   import com.company.ui.Remyl;
   import com.company.assembleegameclient.ui.Gogo;
   import com.company.assembleegameclient.ui.Cid;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.events.Event;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.display.Shape;
   import flash.display.Graphics;
   import com.company.util.Zikodyloc;
   import haqakel.Kefyfa;
   import flash.events.MouseEvent;


   class Vamynov extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Vamynov(param1:String, param2:Boolean) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:String = null;
         this.mowejyman=new GraphicsSolidFill(3355443,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.deb=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.deb;
         new Vector.<IGraphicsData>(5)[1]=this.mowejyman;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Nosupygu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Nosupygu.puzy;
         super();
         this.text_=param1;
         this.cevuqyqy=new Sprite();
         var _loc3_:Shape = new Shape();
         var _loc4_:Graphics = _loc3_.graphics;
         _loc4_.beginFill(0);
         _loc4_.drawRect(0,0,tur,lafo);
         _loc4_.endFill();
         this.cevuqyqy.addChild(_loc3_);
         this.cevuqyqy.mask=_loc3_;
         addChild(this.cevuqyqy);
         _loc5_=Zikodyloc.escape(param1);
         _loc5_=_loc5_.replace(vyneje,"<font color=\"#7777EE\"><a href=\"$1\" target=\"_blank\">"+"$1</a></font>");
         this.tyju=new Remyl(16,11776947,false,tur,0);
         this.tyju.border=false;
         this.tyju.mouseEnabled=true;
         this.tyju.multiline=true;
         this.tyju.wordWrap=true;
         this.tyju.htmlText=_loc5_;
         this.tyju.qovy();
         this.cevuqyqy.addChild(this.tyju);
         var _loc6_:* = this.tyju.height>400;
         if(_loc6_)
         {
            this.ras=new Gogo(16,lafo-4);
            this.ras.x=tur+6;
            this.ras.y=0;
            this.ras.jewojomyb(400,this.tyju.height);
            this.ras.addEventListener(Event.CHANGE,this.requgo);
            addChild(this.ras);
         }
         this.w_=tur+(_loc6_?26:0);
         this.gub=new Cid(14,Kefyfa.ficeg,120);
         this.gub.x=4;
         this.gub.y=lafo+4;
         this.gub.addEventListener(MouseEvent.CLICK,this.sada);
         addChild(this.gub);
         this.gub.visible=param2;
         this.wunejiwa=new Cid(14,Kefyfa.lisu,120);
         this.wunejiwa.x=this.w_-124;
         this.wunejiwa.y=lafo+4;
         this.wunejiwa.addEventListener(MouseEvent.CLICK,this.pikymasa);
         this.wunejiwa.textChanged.addOnce(this.kogyb);
         addChild(this.wunejiwa);
         return;
      }

      public static const tur:int = 400;

      public static const lafo:int = 400;

      private static const vyneje:RegExp = new RegExp("((https?|ftp):((\\/\\/)|(\\\\\\\\))+[\\w\\d:#@%\\/;$()~_?\\+-=\\\\\\.&]*)","g");

      private var text_:String;

      public var w_:int;

      public var h_:int;

      private var tyju:Remyl;

      private var cevuqyqy:Sprite;

      private var ras:Gogo;

      private var gub:Cid;

      private var wunejiwa:Cid;

      private var mowejyman:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function kogyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.h_=lafo+this.wunejiwa.height+8;
         x=800/2-this.w_/2;
         y=600/2-this.h_/2;
         graphics.clear();
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(-6,-6,this.w_+12,this.h_+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function requgo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tyju.y=-this.ras.repofav()*(this.tyju.height-400);
         return;
      }

      private function sada(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      private function pikymasa(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }
[/CLASS]
}