package gibu
{
[CLASS1894]   import flash.display.Sprite;
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
   import haqakel.Kefyfa;
   import flash.events.MouseEvent;


   class Zaresy extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Zaresy(param1:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
         var _loc2_:Shape = new Shape();
         var _loc3_:Graphics = _loc2_.graphics;
         _loc3_.beginFill(0);
         _loc3_.drawRect(0,0,tur,lafo);
         _loc3_.endFill();
         this.cevuqyqy.addChild(_loc2_);
         this.cevuqyqy.mask=_loc2_;
         addChild(this.cevuqyqy);
         this.tyju=new Remyl(16,11776947,true,tur,lafo);
         this.tyju.border=false;
         this.tyju.mouseEnabled=true;
         this.tyju.multiline=true;
         this.tyju.wordWrap=true;
         this.tyju.text=param1;
         this.tyju.qovy();
         this.tyju.addEventListener(Event.CHANGE,this.cazehoqe);
         this.tyju.addEventListener(Event.SCROLL,this.cazehoqe);
         this.cevuqyqy.addChild(this.tyju);
         this.ras=new Gogo(16,lafo-4);
         this.ras.x=tur+6;
         this.ras.y=0;
         this.ras.jewojomyb(400,this.tyju.height);
         this.ras.addEventListener(Event.CHANGE,this.requgo);
         addChild(this.ras);
         this.w_=tur+26;
         this.huze=new Cid(14,Kefyfa.palysiqu,120);
         this.huze.x=4;
         this.huze.y=lafo+4;
         this.huze.addEventListener(MouseEvent.CLICK,this.onCancel);
         addChild(this.huze);
         this.gafacys=new Cid(14,Kefyfa.byfo,120);
         this.gafacys.x=this.w_-124;
         this.gafacys.y=lafo+4;
         this.gafacys.addEventListener(MouseEvent.CLICK,this.hef);
         this.gafacys.textChanged.add(this.kogyb);
         addChild(this.gafacys);
         return;
      }

      public static const tur:int = 400;

      public static const lafo:int = 400;

      private var text_:String;

      public var w_:int;

      public var h_:int;

      private var tyju:Remyl;

      private var cevuqyqy:Sprite;

      private var ras:Gogo;

      private var huze:Cid;

      private var gafacys:Cid;

      private var mowejyman:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function kogyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.h_=lafo+this.gafacys.height+8;
         x=800/2-this.w_/2;
         y=600/2-this.h_/2;
         graphics.clear();
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(-6,-6,this.w_+12,this.h_+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         this.ras.jewojomyb(lafo,this.tyju.textHeight,false);
         return;
      }

      public function kym() : String {
         return this.tyju.text;
      }

      private function requgo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tyju.scrollV=1+this.ras.repofav()*this.tyju.maxScrollV;
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function hef(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function cazehoqe(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.ras==null)
         {
            return;
         }
         this.ras.jewojomyb(lafo,this.tyju.textHeight,false);
         if(this.tyju.maxScrollV==1)
         {
            this.ras.fifywuw(0);
         }
         else
         {
            this.ras.fifywuw((this.tyju.scrollV-1)/(this.tyju.maxScrollV-1));
         }
         return;
      }
   }
[/CLASS]
}