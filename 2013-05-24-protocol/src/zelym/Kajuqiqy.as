package zelym
{
   import flash.display.Sprite;
   import com.company.ui.Sytubyvyg;
   import com.company.assembleegameclient.ui.Tira;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import flash.events.Event;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.display.Shape;
   import flash.display.Graphics;
   import com.company.util.Giwozob;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.MouseEvent;


   class Kajuqiqy extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Kajuqiqy(param1:String, param2:Boolean) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:String = null;
         this.bolu=new GraphicsSolidFill(3355443,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.cedit=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.cedit;
         new Vector.<IGraphicsData>(5)[1]=this.bolu;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Tizulo.gejyd;
         super();
         this.text_=param1;
         this.cik=new Sprite();
         var _loc3_:Shape = new Shape();
         var _loc4_:Graphics = _loc3_.graphics;
         _loc4_.beginFill(0);
         _loc4_.drawRect(0,0,ten,bomy);
         _loc4_.endFill();
         this.cik.addChild(_loc3_);
         this.cik.mask=_loc3_;
         addChild(this.cik);
         _loc5_=Giwozob.escape(param1);
         _loc5_=_loc5_.replace(cahej,"<font color=\"#7777EE\"><a href=\"$1\" target=\"_blank\">"+"$1</a></font>");
         this.woro=new Sytubyvyg(16,11776947,false,ten,0);
         this.woro.border=false;
         this.woro.mouseEnabled=true;
         this.woro.multiline=true;
         this.woro.wordWrap=true;
         this.woro.htmlText=_loc5_;
         this.woro.cijoka();
         this.cik.addChild(this.woro);
         var _loc6_:* = this.woro.height>400;
         if(_loc6_)
         {
            this.cunahide=new Tira(16,bomy-4);
            this.cunahide.x=ten+6;
            this.cunahide.y=0;
            this.cunahide.jyqecubi(400,this.woro.height);
            this.cunahide.addEventListener(Event.CHANGE,this.qugar);
            addChild(this.cunahide);
         }
         this.w_=ten+(_loc6_?26:0);
         this.hebycyraq=new Dogyqijec(14,I18nKeys.jovik,120);
         this.hebycyraq.x=4;
         this.hebycyraq.y=bomy+4;
         this.hebycyraq.addEventListener(MouseEvent.CLICK,this.debasitas);
         addChild(this.hebycyraq);
         this.hebycyraq.visible=param2;
         this.roroqumif=new Dogyqijec(14,I18nKeys.myvamac,120);
         this.roroqumif.x=this.w_-124;
         this.roroqumif.y=bomy+4;
         this.roroqumif.addEventListener(MouseEvent.CLICK,this.onClose);
         this.roroqumif.textChanged.addOnce(this.gywujojak);
         addChild(this.roroqumif);
         return;
      }

      public static const ten:int = 400;

      public static const bomy:int = 400;

      private static const cahej:RegExp = new RegExp("((https?|ftp):((\\/\\/)|(\\\\\\\\))+[\\w\\d:#@%\\/;$()~_?\\+-=\\\\\\.&]*)","g");

      private var text_:String;

      public var w_:int;

      public var h_:int;

      private var woro:Sytubyvyg;

      private var cik:Sprite;

      private var cunahide:Tira;

      private var hebycyraq:Dogyqijec;

      private var roroqumif:Dogyqijec;

      private var bolu:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function gywujojak() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.h_=bomy+this.roroqumif.height+8;
         x=800/2-this.w_/2;
         y=600/2-this.h_/2;
         graphics.clear();
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(-6,-6,this.w_+12,this.h_+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function qugar(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.woro.y=-this.cunahide.cimubito()*(this.woro.height-400);
         return;
      }

      private function debasitas(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      private function onClose(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }

}