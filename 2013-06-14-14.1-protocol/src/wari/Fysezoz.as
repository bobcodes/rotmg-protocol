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
   import com.company.util.Fudocohy;
   import komi.Vibemod;
   import flash.events.MouseEvent;


   class Fysezoz extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Fysezoz(param1:String, param2:Boolean) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:String = null;
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
         var _loc3_:Shape = new Shape();
         var _loc4_:Graphics = _loc3_.graphics;
         _loc4_.beginFill(0);
         _loc4_.drawRect(0,0,qeqo,hijybi);
         _loc4_.endFill();
         this.duvupy.addChild(_loc3_);
         this.duvupy.mask=_loc3_;
         addChild(this.duvupy);
         _loc5_=Fudocohy.escape(param1);
         _loc5_=_loc5_.replace(ducowob,"<font color=\"#7777EE\"><a href=\"$1\" target=\"_blank\">"+"$1</a></font>");
         this.sov=new Vovoj(16,11776947,false,qeqo,0);
         this.sov.border=false;
         this.sov.mouseEnabled=true;
         this.sov.multiline=true;
         this.sov.wordWrap=true;
         this.sov.htmlText=_loc5_;
         this.sov.jacuf();
         this.duvupy.addChild(this.sov);
         var _loc6_:* = this.sov.height>400;
         if(_loc6_)
         {
            this.wypyzeq=new Gequrenaj(16,hijybi-4);
            this.wypyzeq.x=qeqo+6;
            this.wypyzeq.y=0;
            this.wypyzeq.vyhojig(400,this.sov.height);
            this.wypyzeq.addEventListener(Event.CHANGE,this.qorav);
            addChild(this.wypyzeq);
         }
         this.w_=qeqo+(_loc6_?26:0);
         this.veny=new Tivinu(14,Vibemod.qeteb,120);
         this.veny.x=4;
         this.veny.y=hijybi+4;
         this.veny.addEventListener(MouseEvent.CLICK,this.kumol);
         addChild(this.veny);
         this.veny.visible=param2;
         this.fon=new Tivinu(14,Vibemod.tacepiza,120);
         this.fon.x=this.w_-124;
         this.fon.y=hijybi+4;
         this.fon.addEventListener(MouseEvent.CLICK,this.lyb);
         this.fon.textChanged.addOnce(this.tutasuved);
         addChild(this.fon);
         return;
      }

      public static const qeqo:int = 400;

      public static const hijybi:int = 400;

      private static const ducowob:RegExp = new RegExp("((https?|ftp):((\\/\\/)|(\\\\\\\\))+[\\w\\d:#@%\\/;$()~_?\\+-=\\\\\\.&]*)","g");

      private var text_:String;

      public var w_:int;

      public var h_:int;

      private var sov:Vovoj;

      private var duvupy:Sprite;

      private var wypyzeq:Gequrenaj;

      private var veny:Tivinu;

      private var fon:Tivinu;

      private var dudoja:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function tutasuved() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.h_=hijybi+this.fon.height+8;
         x=800/2-this.w_/2;
         y=600/2-this.h_/2;
         graphics.clear();
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(-6,-6,this.w_+12,this.h_+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function qorav(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sov.y=-this.wypyzeq.devaqe()*(this.sov.height-400);
         return;
      }

      private function kumol(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      private function lyb(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }

}