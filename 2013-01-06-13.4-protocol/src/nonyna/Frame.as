package nonyna
{
[CLASS465]   import flash.display.Sprite;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Sosapa;
   import __AS3__.vec.Vector;
   import flash.text.TextFieldAutoSize;
   import zegacymo.Levozek;
   import flash.display.DisplayObject;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Frame extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Frame(param1:String, param2:String, param3:String, param4:String="", param5:int=288) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.sozajas=new Vector.<Cyb>();
         this.tosetirik=new Vector.<Sosapa>();
         this.vuhutyd=new GraphicsSolidFill(5066061,1);
         this.mowejyman=new GraphicsSolidFill(3552822,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.deb=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path1_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.path2_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(9)[0]=this.mowejyman;
         new Vector.<IGraphicsData>(9)[1]=this.path2_;
         new Vector.<IGraphicsData>(9)[2]=Nosupygu.END_FILL;
         new Vector.<IGraphicsData>(9)[3]=this.vuhutyd;
         new Vector.<IGraphicsData>(9)[4]=this.path1_;
         new Vector.<IGraphicsData>(9)[5]=Nosupygu.END_FILL;
         new Vector.<IGraphicsData>(9)[6]=this.deb;
         new Vector.<IGraphicsData>(9)[7]=this.path2_;
         new Vector.<IGraphicsData>(9)[8]=Nosupygu.puzy;
         super();
         this.w_=param5;
         this.danypifev=new Capitu().setSize(12).setColor(11776947);
         this.danypifev.setStringBuilder(new Zufi().setParams(param1));
         this.danypifev.filters=[new DropShadowFilter(0,0,0)];
         this.danypifev.x=5;
         this.danypifev.y=3;
         this.danypifev.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(this.danypifev);
         this.myzoded(param2);
         this.byb(param3);
         this.cenidimak=param4;
         filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private static const lezev:Number = 17;

      public var danypifev:Capitu;

      public var mycip:Sosapa;

      public var mibyruji:Sosapa;

      public var cenidimak:String;

      public var sozajas:Vector.<Cyb>;

      public var tosetirik:Vector.<Sosapa>;

      public var w_:int = 288;

      public var h_:int = 100;

      private function myzoded(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mycip=new Sosapa(18,true,param1);
         if(param1!="")
         {
            this.mycip.buttonMode=true;
            this.mycip.x=109;
            addChild(this.mycip);
         }
         return;
      }

      private function byb(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mibyruji=new Sosapa(18,true,param1);
         this.mibyruji.buttonMode=true;
         this.mibyruji.x=this.w_-this.mibyruji.width-26;
         this.mibyruji.setAutoSize(TextFieldAutoSize.RIGHT);
         addChild(this.mibyruji);
         return;
      }

      public function bapinevy(param1:Levozek) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(param1);
         param1.y=this.h_-60;
         param1.x=17;
         this.h_=this.h_+param1.getHeight();
         return;
      }

      public function sirutugu(param1:Cyb) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sozajas.push(param1);
         addChild(param1);
         param1.y=this.h_-60;
         param1.x=17;
         this.h_=this.h_+Cyb.HEIGHT;
         return;
      }

      public function nozokuw(param1:Sosapa) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tosetirik.push(param1);
         param1.x=lezev;
         addChild(param1);
         this.positionText(param1);
         return;
      }

      public function nofapyfa(param1:DisplayObject, param2:int=8) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=param2;
         this.h_=this.h_+param1.height;
         return;
      }

      public function jow(param1:String, param2:Object=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var text:Capitu = null;
         var position:Function = null;
         var plainText:String = param1;
         var tokens:Object = param2;
         position=new function():void
         {
            positionText(text);
            draw();
            return;
         };
         text=new Capitu().setSize(12).setColor(16777215);
         text.setStringBuilder(new Zufi().setParams(plainText,tokens));
         text.filters=[new DropShadowFilter(0,0,0)];
         text.textChanged.add(position);
         addChild(text);
         return;
      }

      protected function positionText(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.y=this.h_-66;
         param1.x=lezev;
         this.h_=this.h_+20;
         return;
      }

      public function nyposo(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Capitu = null;
         _loc2_=new Capitu().setSize(20).setColor(11711154).setBold(true);
         _loc2_.setStringBuilder(new Zufi().setParams(param1));
         _loc2_.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(_loc2_);
         _loc2_.y=this.h_-60;
         _loc2_.x=15;
         this.h_=this.h_+40;
         return;
      }

      public function biryhupot(param1:Rutugumen) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=lezev;
         this.h_=this.h_+44;
         return;
      }

      public function cuhal(param1:Lypezyfi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=18;
         this.h_=this.h_+param1.height;
         return;
      }

      public function rucep(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.h_=this.h_+param1;
         return;
      }

      public function disable() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Sosapa = null;
         mouseEnabled=false;
         mouseChildren=false;
         for each (_loc1_ in this.tosetirik)
         {
            _loc1_.rih(11776947);
         }
         this.mycip.rih(11776947);
         this.mibyruji.rih(11776947);
         return;
      }

      public function kiwimuj() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Sosapa = null;
         mouseEnabled=true;
         mouseChildren=true;
         for each (_loc1_ in this.tosetirik)
         {
            _loc1_.rih(16777215);
         }
         this.mycip.rih(16777215);
         this.mibyruji.rih(16777215);
         return;
      }

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.draw();
         x=stage.stageWidth/2-(this.w_-6)/2;
         y=stage.stageHeight/2-height/2;
         if(this.sozajas.length>0)
         {
            stage.focus=this.sozajas[0].inputText_;
         }
         return;
      }

      private var vuhutyd:GraphicsSolidFill;

      private var mowejyman:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var path1_:GraphicsPath;

      private var path2_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(9);

      protected function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         Nosupygu.jyrodepu(this.path1_);
         Nosupygu.secebeq(-6,-6,this.w_,20+12,4,[1,1,0,0],this.path1_);
         Nosupygu.jyrodepu(this.path2_);
         Nosupygu.secebeq(-6,-6,this.w_,this.h_,4,[1,1,1,1],this.path2_);
         this.mycip.y=this.h_-52;
         this.mibyruji.y=this.h_-52;
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }
[/CLASS]
}