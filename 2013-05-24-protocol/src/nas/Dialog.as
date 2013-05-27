package nas
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import movimet.Lufub;
   import com.company.assembleegameclient.util.Votif;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import ruwysepyd.Junefolef;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import nec.Sire;
   import nec.Zirewe;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import com.company.googleanalytics.GA;
   import com.company.util.Tizulo;
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
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.box_=new Sprite();
         this.rect_=new Shape();
         this.baw=this.setDialogWidth();
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.cedit=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.bolu=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.cedit;
         new Vector.<IGraphicsData>(5)[1]=this.bolu;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Tizulo.gejyd;
         this.nujapo=new Junefolef();
         this.tomak=param3;
         this.bojepeqig=param4;
         super();
         this.tuleva=new Votif(this);
         this.dala=param5;
         this.liwu(param2,param1);
         this.makeUIAndAdd();
         this.nujapo.complete.addOnce(this.onComplete);
         addChild(this.box_);
         return;
      }

      public static const LEFT_BUTTON:String = "dialogLeftButton";

      public static const RIGHT_BUTTON:String = "dialogRightButton";

      public static const jezupydu:int = 11776947;

      public static const WIDTH:int = 300;

      public var box_:Sprite;

      public var rect_:Shape;

      public var qicoqymuj:Lufub;

      public var pevyh:Lufub = null;

      public var dala:String = null;

      public var bycupoh:Number = 0;

      public var jykegabi:Number = 0;

      public var tuleva:Votif;

      public var myno:int = 2;

      public var nagi:int = 8;

      public var wotasyduh:int = 16;

      public var susu:int = 10;

      public var baw:int;

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var bolu:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected var nujapo:Junefolef;

      protected var leftButton:Dogyqijec;

      protected var rightButton:Dogyqijec;

      private var tomak:String;

      private var bojepeqig:String;

      public function jacu() : String {
         return this.tomak;
      }

      public function tyhyju() : String {
         return this.bojepeqig;
      }

      public function bipefybo(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qicoqymuj.setStringBuilder(new Sire().setParams(param1,param2));
         return;
      }

      public function vynuqe(param1:Zirewe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pevyh.setStringBuilder(param1);
         return;
      }

      protected function setDialogWidth() : int {
         return WIDTH;
      }

      private function liwu(param1:String, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.initText(param1);
         this.rep(this.qicoqymuj);
         this.lozegere(param2);
         this.cetyjuz();
         return;
      }

      protected function makeUIAndAdd() : void {
         return;
      }

      protected function initText(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qicoqymuj=new Lufub().setSize(14).setColor(jezupydu);
         this.qicoqymuj.setTextWidth(this.baw-40);
         this.qicoqymuj.x=20;
         this.qicoqymuj.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.qicoqymuj.setStringBuilder(new Sire().setParams(param1));
         this.qicoqymuj.mouseEnabled=true;
         this.qicoqymuj.filters=[new DropShadowFilter(0,0,0,1,6,6,1)];
         return;
      }

      private function rep(param1:Lufub) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.box_.addChild(param1);
         this.nujapo.push(param1.textChanged);
         return;
      }

      private function lozegere(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1!=null)
         {
            this.pevyh=new Lufub().setSize(18).setColor(5746018);
            this.pevyh.setBold(true);
            this.pevyh.setAutoSize(TextFieldAutoSize.CENTER);
            this.pevyh.filters=[new DropShadowFilter(0,0,0,1,8,8,1)];
            this.pevyh.setStringBuilder(new Sire().setParams(param1));
            this.rep(this.pevyh);
         }
         return;
      }

      private function cetyjuz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tomak!=null)
         {
            this.leftButton=new Dogyqijec(16,this.tomak,120);
            this.leftButton.addEventListener(MouseEvent.CLICK,this.zog);
         }
         if(this.bojepeqig!=null)
         {
            this.rightButton=new Dogyqijec(16,this.bojepeqig,120);
            this.rightButton.addEventListener(MouseEvent.CLICK,this.zyluqi);
         }
         return;
      }

      private function onComplete() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.draw();
         this.ziwy();
         return;
      }

      private function ziwy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.box_.x=this.bycupoh+this.tuleva.qyru()/2-this.box_.width/2;
         this.box_.y=this.jykegabi+this.tuleva.rociku()/2-this.getBoxHeight()/2;
         if(this.dala!=null)
         {
            this.tujefi();
         }
         return;
      }

      private function tujefi() : void {
         try
         {
            GA.global().trackPageview(this.dala);
         }
         catch(error:Error)
         {
         }
         return;
      }

      private function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zej();
         this.drawAdditionalUI();
         this.podyvy();
         return;
      }

      protected function drawAdditionalUI() : void {
         return;
      }

      protected function podyvy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.box_.contains(this.rect_))
         {
            this.box_.removeChild(this.rect_);
         }
         this.pazec();
         this.cucytedef();
         this.tizyf();
         this.drawGraphicsTemplate();
         this.box_.addChildAt(this.rect_,0);
         this.box_.filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      protected function drawGraphicsTemplate() : void {
         return;
      }

      private function tizyf() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,this.baw,this.getBoxHeight()+this.susu,4,[1,1,1,1],this.path_);
         var _loc1_:Graphics = this.rect_.graphics;
         _loc1_.clear();
         _loc1_.drawGraphicsData(this.graphicsData_);
         return;
      }

      protected function getBoxHeight() : Number {
         return this.box_.height;
      }

      private function cucytedef() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(this.leftButton!=null)
         {
            _loc1_=this.box_.height+this.wotasyduh;
            this.box_.addChild(this.leftButton);
            this.leftButton.y=_loc1_;
            if(this.rightButton==null)
            {
               this.leftButton.x=this.baw/2-this.leftButton.width/2;
            }
            else
            {
               this.leftButton.x=this.baw/4-this.leftButton.width/2;
               this.box_.addChild(this.rightButton);
               this.rightButton.x=3*this.baw/4-this.rightButton.width/2;
               this.rightButton.y=_loc1_;
            }
         }
         return;
      }

      private function zej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.pevyh!=null)
         {
            this.pevyh.x=this.baw/2;
            this.pevyh.y=this.myno;
            this.qicoqymuj.y=this.pevyh.height+this.nagi;
         }
         else
         {
            this.qicoqymuj.y=4;
         }
         return;
      }

      private function pazec() : void {
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

      protected function zog(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(LEFT_BUTTON));
         return;
      }

      protected function zyluqi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(RIGHT_BUTTON));
         return;
      }
   }

}