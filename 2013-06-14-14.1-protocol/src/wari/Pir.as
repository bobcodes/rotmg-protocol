package wari
{
   import flash.display.Sprite;
   import com.company.ui.Vovoj;
   import com.company.assembleegameclient.ui.Gequrenaj;
   import com.company.assembleegameclient.ui.Tivinu;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.events.Event;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.display.Shape;
   import flash.display.Graphics;
   import komi.Vibemod;
   import flash.events.MouseEvent;


   class Pir extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Pir(param1:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.dudoja=new GraphicsSolidFill(3355443,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.dabyqeqi=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.dabyqeqi;
         new Vector.<IGraphicsData>(5)[1]=this.dudoja;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.jydebugu;
         super();
         this.text_=param1;
         this.duvupy=new Sprite();
         var _loc2_:Shape = new Shape();
         var _loc3_:Graphics = _loc2_.graphics;
         _loc3_.beginFill(0);
         _loc3_.drawRect(0,0,qeqo,hijybi);
         _loc3_.endFill();
         this.duvupy.addChild(_loc2_);
         this.duvupy.mask=_loc2_;
         addChild(this.duvupy);
         this.sov=new Vovoj(16,11776947,true,qeqo,hijybi);
         this.sov.border=false;
         this.sov.mouseEnabled=true;
         this.sov.multiline=true;
         this.sov.wordWrap=true;
         this.sov.text=param1;
         this.sov.jacuf();
         this.sov.addEventListener(Event.CHANGE,this.sudeho);
         this.sov.addEventListener(Event.SCROLL,this.sudeho);
         this.duvupy.addChild(this.sov);
         this.wypyzeq=new Gequrenaj(16,hijybi-4);
         this.wypyzeq.x=qeqo+6;
         this.wypyzeq.y=0;
         this.wypyzeq.vyhojig(400,this.sov.height);
         this.wypyzeq.addEventListener(Event.CHANGE,this.qorav);
         addChild(this.wypyzeq);
         this.w_=qeqo+26;
         this.ziboc=new Tivinu(14,Vibemod.diqysyk,120);
         this.ziboc.x=4;
         this.ziboc.y=hijybi+4;
         this.ziboc.addEventListener(MouseEvent.CLICK,this.onCancel);
         addChild(this.ziboc);
         this.ric=new Tivinu(14,Vibemod.synos,120);
         this.ric.x=this.w_-124;
         this.ric.y=hijybi+4;
         this.ric.addEventListener(MouseEvent.CLICK,this.wowafu);
         this.ric.textChanged.add(this.tutasuved);
         addChild(this.ric);
         return;
      }

      public static const qeqo:int = 400;

      public static const hijybi:int = 400;

      private var text_:String;

      public var w_:int;

      public var h_:int;

      private var sov:Vovoj;

      private var duvupy:Sprite;

      private var wypyzeq:Gequrenaj;

      private var ziboc:Tivinu;

      private var ric:Tivinu;

      private var dudoja:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function tutasuved() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.h_=hijybi+this.ric.height+8;
         x=800/2-this.w_/2;
         y=600/2-this.h_/2;
         graphics.clear();
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(-6,-6,this.w_+12,this.h_+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         this.wypyzeq.vyhojig(hijybi,this.sov.textHeight,false);
         return;
      }

      public function hat() : String {
         return this.sov.text;
      }

      private function qorav(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sov.scrollV=1+this.wypyzeq.devaqe()*this.sov.maxScrollV;
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function wowafu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function sudeho(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.wypyzeq==null)
         {
            return;
         }
         this.wypyzeq.vyhojig(hijybi,this.sov.textHeight,false);
         if(this.sov.maxScrollV==1)
         {
            this.wypyzeq.quwakeco(0);
         }
         else
         {
            this.wypyzeq.quwakeco((this.sov.scrollV-1)/(this.sov.maxScrollV-1));
         }
         return;
      }
   }

}