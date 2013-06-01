package cejyva
{
[CLASS417]   import flash.display.Sprite;
   import tinava.Dab;
   import flash.display.Shape;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import com.company.assembleegameclient.util.Vureriju;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import tidi.Dak;
   import flash.text.TextFieldAutoSize;
   import totuhare.Javo;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import com.company.googleanalytics.GA;
   import com.company.util.Nosupygu;
   import flash.display.Graphics;
   import flash.events.Event;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import zehus.Kelapu;


   public class ErrorDialog extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ErrorDialog(param1:String) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.box_=new Sprite();
         this.rect_=new Shape();
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.deb=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.mowejyman=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.deb;
         new Vector.<IGraphicsData>(5)[1]=this.mowejyman;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Nosupygu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Nosupygu.puzy;
         this.cebyriby=new Dak();
         super();
         var _loc2_:String = ["An error has occured:",param1].join("\n");
         this.kebycos=new Vureriju(this);
         this.cenidimak="/error";
         this.halujesuf(_loc2_,"D\'oh, this isn\'t good","ErrorWindow.buttonOK",null);
         this.makeUIAndAdd();
         this.cebyriby.complete.addOnce(this.onComplete);
         addChild(this.box_);
         this.ok=new Kelapu(this,Dialog.LEFT_BUTTON);
         return;
      }

      public static const nijurec:int = 11776947;

      protected static const WIDTH:int = 300;

      public var ok:Dab;

      public var box_:Sprite;

      public var rect_:Shape;

      public var wan:Capitu;

      public var danypifev:Capitu = null;

      public var button1_:Cid = null;

      public var button2_:Cid = null;

      public var cenidimak:String = null;

      public var bage:Number = 0;

      public var fupefub:Number = 0;

      public var kebycos:Vureriju;

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var mowejyman:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected var cebyriby:Dak;

      private function halujesuf(param1:String, param2:String, param3:String, param4:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.initText(param1);
         this.res(this.wan);
         this.nagekive(param2);
         this.zoqumu(param3,param4);
         return;
      }

      protected function makeUIAndAdd() : void {
         return;
      }

      protected function initText(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wan=new Capitu().setSize(14).setColor(nijurec);
         this.wan.setTextWidth(WIDTH-40);
         this.wan.x=20;
         this.wan.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.wan.setStringBuilder(new Javo(param1));
         this.wan.mouseEnabled=true;
         this.wan.filters=[new DropShadowFilter(0,0,0,1,6,6,1)];
         return;
      }

      private function res(param1:Capitu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.box_.addChild(param1);
         this.cebyriby.push(param1.textChanged);
         return;
      }

      private function nagekive(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1!=null)
         {
            this.danypifev=new Capitu().setSize(18).setColor(5746018);
            this.danypifev.setTextWidth(WIDTH);
            this.danypifev.setBold(true);
            this.danypifev.setAutoSize(TextFieldAutoSize.CENTER);
            this.danypifev.filters=[new DropShadowFilter(0,0,0,1,8,8,1)];
            this.danypifev.setStringBuilder(new Javo(param1));
            this.res(this.danypifev);
         }
         return;
      }

      private function zoqumu(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1!=null)
         {
            this.button1_=new Cid(16,param1,120);
            this.button1_.addEventListener(MouseEvent.CLICK,this.onButton1Click);
         }
         if(param2!=null)
         {
            this.button2_=new Cid(16,param2,120);
            this.button2_.addEventListener(MouseEvent.CLICK,this.onButton2Click);
         }
         return;
      }

      private function onComplete() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.draw();
         this.hegojehu();
         return;
      }

      private function hegojehu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.box_.x=this.bage+this.kebycos.lonahi()/2-this.box_.width/2;
         this.box_.y=this.fupefub+this.kebycos.tek()/2-this.getBoxHeight()/2;
         if(this.cenidimak!=null)
         {
            this.vezejaqan();
         }
         return;
      }

      private function vezejaqan() : void {
         try
         {
            GA.global().trackPageview(this.cenidimak);
         }
         catch(error:Error)
         {
         }
         return;
      }

      private function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tativa();
         this.drawAdditionalUI();
         this.zesypapob();
         return;
      }

      protected function drawAdditionalUI() : void {
         return;
      }

      protected function zesypapob() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.box_.contains(this.rect_))
         {
            this.box_.removeChild(this.rect_);
         }
         this.godi();
         this.hurevi();
         this.qafu();
         this.box_.addChildAt(this.rect_,0);
         this.box_.filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      private function qafu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,WIDTH,this.getBoxHeight()+10,4,[1,1,1,1],this.path_);
         var _loc1_:Graphics = this.rect_.graphics;
         _loc1_.clear();
         _loc1_.drawGraphicsData(this.graphicsData_);
         return;
      }

      protected function getBoxHeight() : Number {
         return this.box_.height;
      }

      private function hurevi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         if(this.button1_!=null)
         {
            _loc1_=this.box_.height+16;
            this.box_.addChild(this.button1_);
            this.button1_.y=_loc1_;
            if(this.button2_==null)
            {
               this.button1_.x=WIDTH/2-this.button1_.width/2;
            }
            else
            {
               this.button1_.x=WIDTH/4-this.button1_.width/2;
               this.box_.addChild(this.button2_);
               this.button2_.x=3*WIDTH/4-this.button2_.width/2;
               this.button2_.y=_loc1_;
            }
         }
         return;
      }

      private function godi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.button1_)&&(this.box_.contains(this.button1_)))
         {
            this.box_.removeChild(this.button1_);
         }
         if((this.button2_)&&(this.box_.contains(this.button2_)))
         {
            this.box_.removeChild(this.button2_);
         }
         return;
      }

      private function tativa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.danypifev!=null)
         {
            this.danypifev.y=2;
            this.wan.y=this.danypifev.height+8;
         }
         else
         {
            this.wan.y=4;
         }
         return;
      }

      private function onButton1Click(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Dialog.LEFT_BUTTON));
         return;
      }

      private function onButton2Click(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Dialog.RIGHT_BUTTON));
         return;
      }

      public function ducepoj(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rect_.alpha=param1>1?1:param1<0?0:param1;
         return;
      }
   }
[/CLASS]
}