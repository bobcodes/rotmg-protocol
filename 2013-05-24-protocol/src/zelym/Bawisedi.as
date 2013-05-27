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
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.MouseEvent;


   class Bawisedi extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Bawisedi(param1:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
         var _loc2_:Shape = new Shape();
         var _loc3_:Graphics = _loc2_.graphics;
         _loc3_.beginFill(0);
         _loc3_.drawRect(0,0,ten,bomy);
         _loc3_.endFill();
         this.cik.addChild(_loc2_);
         this.cik.mask=_loc2_;
         addChild(this.cik);
         this.woro=new Sytubyvyg(16,11776947,true,ten,bomy);
         this.woro.border=false;
         this.woro.mouseEnabled=true;
         this.woro.multiline=true;
         this.woro.wordWrap=true;
         this.woro.text=param1;
         this.woro.cijoka();
         this.woro.addEventListener(Event.CHANGE,this.megos);
         this.woro.addEventListener(Event.SCROLL,this.megos);
         this.cik.addChild(this.woro);
         this.cunahide=new Tira(16,bomy-4);
         this.cunahide.x=ten+6;
         this.cunahide.y=0;
         this.cunahide.jyqecubi(400,this.woro.height);
         this.cunahide.addEventListener(Event.CHANGE,this.qugar);
         addChild(this.cunahide);
         this.w_=ten+26;
         this.ramuty=new Dogyqijec(14,I18nKeys.toryryqos,120);
         this.ramuty.x=4;
         this.ramuty.y=bomy+4;
         this.ramuty.addEventListener(MouseEvent.CLICK,this.onCancel);
         addChild(this.ramuty);
         this.surazamin=new Dogyqijec(14,I18nKeys.hoda,120);
         this.surazamin.x=this.w_-124;
         this.surazamin.y=bomy+4;
         this.surazamin.addEventListener(MouseEvent.CLICK,this.jucafiso);
         this.surazamin.textChanged.add(this.gywujojak);
         addChild(this.surazamin);
         return;
      }

      public static const ten:int = 400;

      public static const bomy:int = 400;

      private var text_:String;

      public var w_:int;

      public var h_:int;

      private var woro:Sytubyvyg;

      private var cik:Sprite;

      private var cunahide:Tira;

      private var ramuty:Dogyqijec;

      private var surazamin:Dogyqijec;

      private var bolu:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function gywujojak() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.h_=bomy+this.surazamin.height+8;
         x=800/2-this.w_/2;
         y=600/2-this.h_/2;
         graphics.clear();
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(-6,-6,this.w_+12,this.h_+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         this.cunahide.jyqecubi(bomy,this.woro.textHeight,false);
         return;
      }

      public function geheza() : String {
         return this.woro.text;
      }

      private function qugar(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.woro.scrollV=1+this.cunahide.cimubito()*this.woro.maxScrollV;
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function jucafiso(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function megos(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.cunahide==null)
         {
            return;
         }
         this.cunahide.jyqecubi(bomy,this.woro.textHeight,false);
         if(this.woro.maxScrollV==1)
         {
            this.cunahide.ricos(0);
         }
         else
         {
            this.cunahide.ricos((this.woro.scrollV-1)/(this.woro.maxScrollV-1));
         }
         return;
      }
   }

}