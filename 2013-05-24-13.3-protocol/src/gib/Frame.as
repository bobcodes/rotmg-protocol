package gib
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Rucoted;
   import __AS3__.vec.Vector;
   import flash.text.TextFieldAutoSize;
   import mafu.Pyrosofaj;
   import flash.display.DisplayObject;
   import nec.Sire;
   import flash.filters.DropShadowFilter;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
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
         this.qysupyk=new Vector.<Wejat>();
         this.tewodufu=new Vector.<Rucoted>();
         this.coliduwy=new GraphicsSolidFill(5066061,1);
         this.bolu=new GraphicsSolidFill(3552822,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.cedit=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path1_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.path2_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(9)[0]=this.bolu;
         new Vector.<IGraphicsData>(9)[1]=this.path2_;
         new Vector.<IGraphicsData>(9)[2]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(9)[3]=this.coliduwy;
         new Vector.<IGraphicsData>(9)[4]=this.path1_;
         new Vector.<IGraphicsData>(9)[5]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(9)[6]=this.cedit;
         new Vector.<IGraphicsData>(9)[7]=this.path2_;
         new Vector.<IGraphicsData>(9)[8]=Tizulo.gejyd;
         super();
         this.w_=param5;
         this.pevyh=new Lufub().setSize(12).setColor(11776947);
         this.pevyh.setStringBuilder(new Sire().setParams(param1));
         this.pevyh.filters=[new DropShadowFilter(0,0,0)];
         this.pevyh.x=5;
         this.pevyh.y=3;
         this.pevyh.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(this.pevyh);
         this.fykevi(param2);
         this.sokacigi(param3);
         this.dala=param4;
         filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private static const sytiqol:Number = 17;

      public var pevyh:Lufub;

      public var lodab:Rucoted;

      public var dal:Rucoted;

      public var dala:String;

      public var qysupyk:Vector.<Wejat>;

      public var tewodufu:Vector.<Rucoted>;

      public var w_:int = 288;

      public var h_:int = 100;

      private function fykevi(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lodab=new Rucoted(18,true,param1);
         if(param1!="")
         {
            this.lodab.buttonMode=true;
            this.lodab.x=109;
            addChild(this.lodab);
         }
         return;
      }

      private function sokacigi(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dal=new Rucoted(18,true,param1);
         this.dal.buttonMode=true;
         this.dal.x=this.w_-this.dal.width-26;
         this.dal.setAutoSize(TextFieldAutoSize.RIGHT);
         addChild(this.dal);
         return;
      }

      public function jefuqyp(param1:Pyrosofaj) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(param1);
         param1.y=this.h_-60;
         param1.x=17;
         this.h_=this.h_+param1.getHeight();
         return;
      }

      public function jupywota(param1:Wejat) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qysupyk.push(param1);
         addChild(param1);
         param1.y=this.h_-60;
         param1.x=17;
         this.h_=this.h_+Wejat.HEIGHT;
         return;
      }

      public function zuduhujul(param1:Rucoted) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tewodufu.push(param1);
         param1.x=sytiqol;
         addChild(param1);
         this.positionText(param1);
         return;
      }

      public function pik(param1:DisplayObject, param2:int=8) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=param2;
         this.h_=this.h_+param1.height;
         return;
      }

      public function syzicodag(param1:String, param2:Object=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var text:Lufub = null;
         var position:Function = null;
         var plainText:String = param1;
         var tokens:Object = param2;
         position=new function():void
         {
            positionText(text);
            draw();
            return;
         };
         text=new Lufub().setSize(12).setColor(16777215);
         text.setStringBuilder(new Sire().setParams(plainText,tokens));
         text.filters=[new DropShadowFilter(0,0,0)];
         text.textChanged.add(position);
         addChild(text);
         return;
      }

      protected function positionText(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.y=this.h_-66;
         param1.x=sytiqol;
         this.h_=this.h_+20;
         return;
      }

      public function zew(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Lufub = null;
         _loc2_=new Lufub().setSize(20).setColor(11711154).setBold(true);
         _loc2_.setStringBuilder(new Sire().setParams(param1));
         _loc2_.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(_loc2_);
         _loc2_.y=this.h_-60;
         _loc2_.x=15;
         this.h_=this.h_+40;
         return;
      }

      public function todum(param1:Bumajugel) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=sytiqol;
         this.h_=this.h_+44;
         return;
      }

      public function depemeno(param1:Zamiparal) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=18;
         this.h_=this.h_+param1.height;
         return;
      }

      public function pujiwe(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.h_=this.h_+param1;
         return;
      }

      public function disable() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Rucoted = null;
         mouseEnabled=false;
         mouseChildren=false;
         for each (_loc1_ in this.tewodufu)
         {
            _loc1_.pajupu(11776947);
         }
         this.lodab.pajupu(11776947);
         this.dal.pajupu(11776947);
         return;
      }

      public function pinyry() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Rucoted = null;
         mouseEnabled=true;
         mouseChildren=true;
         for each (_loc1_ in this.tewodufu)
         {
            _loc1_.pajupu(16777215);
         }
         this.lodab.pajupu(16777215);
         this.dal.pajupu(16777215);
         return;
      }

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.draw();
         x=stage.stageWidth/2-(this.w_-6)/2;
         y=stage.stageHeight/2-height/2;
         if(this.qysupyk.length>0)
         {
            stage.focus=this.qysupyk[0].inputText_;
         }
         return;
      }

      private var coliduwy:GraphicsSolidFill;

      private var bolu:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var path1_:GraphicsPath;

      private var path2_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(9);

      protected function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         Tizulo.vomynaqu(this.path1_);
         Tizulo.woforyzib(-6,-6,this.w_,20+12,4,[1,1,0,0],this.path1_);
         Tizulo.vomynaqu(this.path2_);
         Tizulo.woforyzib(-6,-6,this.w_,this.h_,4,[1,1,1,1],this.path2_);
         this.lodab.y=this.h_-52;
         this.dal.y=this.h_-52;
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}