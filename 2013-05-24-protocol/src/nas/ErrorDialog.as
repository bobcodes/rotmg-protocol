package nas
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import flash.display.Shape;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import com.company.assembleegameclient.util.Votif;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import ruwysepyd.Junefolef;
   import flash.text.TextFieldAutoSize;
   import nec.Nara;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import com.company.googleanalytics.GA;
   import com.company.util.Tizulo;
   import flash.display.Graphics;
   import flash.events.Event;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import gyzesuqu.Zojygese;


   public class ErrorDialog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ErrorDialog(param1:String) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.box_=new Sprite();
         this.rect_=new Shape();
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
         super();
         var _loc2_:String = ["An error has occured:",param1].join("\n");
         this.tuleva=new Votif(this);
         this.dala="/error";
         this.liwu(_loc2_,"D\'oh, this isn\'t good","ErrorWindow.buttonOK",null);
         this.makeUIAndAdd();
         this.nujapo.complete.addOnce(this.onComplete);
         addChild(this.box_);
         this.ok=new Zojygese(this,Dialog.LEFT_BUTTON);
         return;
      }

      public static const jezupydu:int = 11776947;

      protected static const WIDTH:int = 300;

      public var ok:Hugyqufyq;

      public var box_:Sprite;

      public var rect_:Shape;

      public var qicoqymuj:Lufub;

      public var pevyh:Lufub = null;

      public var button1_:Dogyqijec = null;

      public var button2_:Dogyqijec = null;

      public var dala:String = null;

      public var bycupoh:Number = 0;

      public var jykegabi:Number = 0;

      public var tuleva:Votif;

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var bolu:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected var nujapo:Junefolef;

      private function liwu(param1:String, param2:String, param3:String, param4:String) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.initText(param1);
         this.rep(this.qicoqymuj);
         this.lozegere(param2);
         this.cetyjuz(param3,param4);
         return;
      }

      protected function makeUIAndAdd() : void {
         return;
      }

      protected function initText(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qicoqymuj=new Lufub().setSize(14).setColor(jezupydu);
         this.qicoqymuj.setTextWidth(WIDTH-40);
         this.qicoqymuj.x=20;
         this.qicoqymuj.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.qicoqymuj.setStringBuilder(new Nara(param1));
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!=null)
         {
            this.pevyh=new Lufub().setSize(18).setColor(5746018);
            this.pevyh.setTextWidth(WIDTH);
            this.pevyh.setBold(true);
            this.pevyh.setAutoSize(TextFieldAutoSize.CENTER);
            this.pevyh.filters=[new DropShadowFilter(0,0,0,1,8,8,1)];
            this.pevyh.setStringBuilder(new Nara(param1));
            this.rep(this.pevyh);
         }
         return;
      }

      private function cetyjuz(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1!=null)
         {
            this.button1_=new Dogyqijec(16,param1,120);
            this.button1_.addEventListener(MouseEvent.CLICK,this.onButton1Click);
         }
         if(param2!=null)
         {
            this.button2_=new Dogyqijec(16,param2,120);
            this.button2_.addEventListener(MouseEvent.CLICK,this.onButton2Click);
         }
         return;
      }

      private function onComplete() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.draw();
         this.ziwy();
         return;
      }

      private function ziwy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
         this.box_.addChildAt(this.rect_,0);
         this.box_.filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      private function tizyf() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,WIDTH,this.getBoxHeight()+10,4,[1,1,1,1],this.path_);
         var _loc1_:Graphics = this.rect_.graphics;
         _loc1_.clear();
         _loc1_.drawGraphicsData(this.graphicsData_);
         return;
      }

      protected function getBoxHeight() : Number {
         return this.box_.height;
      }

      private function cucytedef() : void {
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

      private function pazec() : void {
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

      private function zej() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.pevyh!=null)
         {
            this.pevyh.y=2;
            this.qicoqymuj.y=this.pevyh.height+8;
         }
         else
         {
            this.qicoqymuj.y=4;
         }
         return;
      }

      private function onButton1Click(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Dialog.LEFT_BUTTON));
         return;
      }

      private function onButton2Click(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Dialog.RIGHT_BUTTON));
         return;
      }

      public function zefys(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rect_.alpha=param1>1?1:param1<0?0:param1;
         return;
      }
   }

}