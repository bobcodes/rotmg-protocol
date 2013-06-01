package cejyva
{
[CLASS241]   import flash.display.Sprite;
   import flash.display.Shape;
   import pudev.Capitu;
   import com.company.assembleegameclient.util.Vureriju;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import tidi.Dak;
   import com.company.assembleegameclient.ui.Cid;
   import totuhare.Zufi;
   import totuhare.Qebar;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import com.company.googleanalytics.GA;
   import com.company.util.Nosupygu;
   import flash.display.Graphics;
   import flash.events.Event;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Dialog extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Dialog(param1:String, param2:String, param3:String, param4:String, param5:String) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.box_=new Sprite();
         this.rect_=new Shape();
         this.qureje=this.setDialogWidth();
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
         this.qucytu=param3;
         this.wow=param4;
         super();
         this.kebycos=new Vureriju(this);
         this.cenidimak=param5;
         this.halujesuf(param2,param1);
         this.makeUIAndAdd();
         this.cebyriby.complete.addOnce(this.onComplete);
         addChild(this.box_);
         return;
      }

      public static const LEFT_BUTTON:String = "dialogLeftButton";

      public static const RIGHT_BUTTON:String = "dialogRightButton";

      public static const nijurec:int = 11776947;

      public static const WIDTH:int = 300;

      public var box_:Sprite;

      public var rect_:Shape;

      public var wan:Capitu;

      public var danypifev:Capitu = null;

      public var cenidimak:String = null;

      public var bage:Number = 0;

      public var fupefub:Number = 0;

      public var kebycos:Vureriju;

      public var holinecuc:int = 2;

      public var muha:int = 8;

      public var siqed:int = 16;

      public var vitufefaz:int = 10;

      public var qureje:int;

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var mowejyman:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected var cebyriby:Dak;

      protected var leftButton:Cid;

      protected var rightButton:Cid;

      private var qucytu:String;

      private var wow:String;

      public function foqud() : String {
         return this.qucytu;
      }

      public function nenovy() : String {
         return this.wow;
      }

      public function rezynobik(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.wan.setStringBuilder(new Zufi().setParams(param1,param2));
         return;
      }

      public function pyhifavun(param1:Qebar) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.danypifev.setStringBuilder(param1);
         return;
      }

      protected function setDialogWidth() : int {
         return WIDTH;
      }

      private function halujesuf(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.initText(param1);
         this.res(this.wan);
         this.nagekive(param2);
         this.zoqumu();
         return;
      }

      protected function makeUIAndAdd() : void {
         return;
      }

      protected function initText(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wan=new Capitu().setSize(14).setColor(nijurec);
         this.wan.setTextWidth(this.qureje-40);
         this.wan.x=20;
         this.wan.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.wan.setStringBuilder(new Zufi().setParams(param1));
         this.wan.mouseEnabled=true;
         this.wan.filters=[new DropShadowFilter(0,0,0,1,6,6,1)];
         return;
      }

      private function res(param1:Capitu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
            this.danypifev.setBold(true);
            this.danypifev.setAutoSize(TextFieldAutoSize.CENTER);
            this.danypifev.filters=[new DropShadowFilter(0,0,0,1,8,8,1)];
            this.danypifev.setStringBuilder(new Zufi().setParams(param1));
            this.res(this.danypifev);
         }
         return;
      }

      private function zoqumu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.qucytu!=null)
         {
            this.leftButton=new Cid(16,this.qucytu,120);
            this.leftButton.addEventListener(MouseEvent.CLICK,this.wujamyv);
         }
         if(this.wow!=null)
         {
            this.rightButton=new Cid(16,this.wow,120);
            this.rightButton.addEventListener(MouseEvent.CLICK,this.ricuc);
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.box_.contains(this.rect_))
         {
            this.box_.removeChild(this.rect_);
         }
         this.godi();
         this.hurevi();
         this.qafu();
         this.drawGraphicsTemplate();
         this.box_.addChildAt(this.rect_,0);
         this.box_.filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      protected function drawGraphicsTemplate() : void {
         return;
      }

      private function qafu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,this.qureje,this.getBoxHeight()+this.vitufefaz,4,[1,1,1,1],this.path_);
         var _loc1_:Graphics = this.rect_.graphics;
         _loc1_.clear();
         _loc1_.drawGraphicsData(this.graphicsData_);
         return;
      }

      protected function getBoxHeight() : Number {
         return this.box_.height;
      }

      private function hurevi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(this.leftButton!=null)
         {
            _loc1_=this.box_.height+this.siqed;
            this.box_.addChild(this.leftButton);
            this.leftButton.y=_loc1_;
            if(this.rightButton==null)
            {
               this.leftButton.x=this.qureje/2-this.leftButton.width/2;
            }
            else
            {
               this.leftButton.x=this.qureje/4-this.leftButton.width/2;
               this.box_.addChild(this.rightButton);
               this.rightButton.x=3*this.qureje/4-this.rightButton.width/2;
               this.rightButton.y=_loc1_;
            }
         }
         return;
      }

      private function tativa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.danypifev!=null)
         {
            this.danypifev.x=this.qureje/2;
            this.danypifev.y=this.holinecuc;
            this.wan.y=this.danypifev.height+this.muha;
         }
         else
         {
            this.wan.y=4;
         }
         return;
      }

      private function godi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.leftButton)&&(this.box_.contains(this.leftButton)))
         {
            this.box_.removeChild(this.leftButton);
         }
         if((this.rightButton)&&(this.box_.contains(this.rightButton)))
         {
            this.box_.removeChild(this.rightButton);
         }
         return;
      }

      protected function wujamyv(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(LEFT_BUTTON));
         return;
      }

      protected function ricuc(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(RIGHT_BUTTON));
         return;
      }
   }
[/CLASS]
}