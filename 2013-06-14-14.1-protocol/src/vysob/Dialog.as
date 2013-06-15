package vysob
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.util.Cokinomu;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import wenono.Nuri;
   import com.company.assembleegameclient.ui.Tivinu;
   import jediwip.Kybidu;
   import jediwip.Tunyhazo;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import com.company.googleanalytics.GA;
   import com.company.util.Dyrejocu;
   import flash.display.Graphics;
   import flash.events.Event;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Dialog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Dialog(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Object=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.box_=new Sprite();
         this.rect_=new Shape();
         this.lavi=this.setDialogWidth();
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.dabyqeqi=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.dudoja=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.dabyqeqi;
         new Vector.<IGraphicsData>(5)[1]=this.dudoja;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.jydebugu;
         this.gujas=new Nuri();
         this.cyjinu=param6;
         this.rasajugyq=param3;
         this.ciqe=param4;
         super();
         this.gap=new Cokinomu(this);
         this.rum=param5;
         this.sobadeqoz(param2,param1);
         this.makeUIAndAdd();
         this.gujas.complete.addOnce(this.onComplete);
         addChild(this.box_);
         return;
      }

      public static const LEFT_BUTTON:String = "dialogLeftButton";

      public static const RIGHT_BUTTON:String = "dialogRightButton";

      public static const ratuz:int = 11776947;

      public static const WIDTH:int = 300;

      public var box_:Sprite;

      public var rect_:Shape;

      public var wybibe:Guzowoja;

      public var tob:Guzowoja = null;

      public var rum:String = null;

      public var hitysifeb:Number = 0;

      public var bideb:Number = 0;

      public var gap:Cokinomu;

      public var qipuvymo:int = 2;

      public var tepytu:int = 8;

      public var vytozof:int = 16;

      public var cyni:int = 10;

      public var lavi:int;

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var dudoja:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected var gujas:Nuri;

      protected var leftButton:Tivinu;

      protected var rightButton:Tivinu;

      private var rasajugyq:String;

      private var ciqe:String;

      private var cyjinu:Object;

      public function fyjipuq() : String {
         return this.rasajugyq;
      }

      public function cilovuf() : String {
         return this.ciqe;
      }

      public function vubah(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wybibe.setStringBuilder(new Kybidu().setParams(param1,param2));
         return;
      }

      public function pelab(param1:Tunyhazo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tob.setStringBuilder(param1);
         return;
      }

      protected function setDialogWidth() : int {
         return WIDTH;
      }

      private function sobadeqoz(param1:String, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.initText(param1);
         this.fubaha(this.wybibe);
         this.pidiqyhas(param2);
         this.kuho();
         return;
      }

      protected function makeUIAndAdd() : void {
         return;
      }

      protected function initText(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wybibe=new Guzowoja().setSize(14).setColor(ratuz);
         this.wybibe.setTextWidth(this.lavi-40);
         this.wybibe.x=20;
         this.wybibe.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.wybibe.setHTML(true);
         var _loc2_:Kybidu = new Kybidu().setParams(param1).setPrefix("<p align=\"center\">").setPostfix("</p>");
         if(this.cyjinu)
         {
            _loc2_.setParams(param1,this.cyjinu);
         }
         this.wybibe.setStringBuilder(_loc2_);
         this.wybibe.mouseEnabled=true;
         this.wybibe.filters=[new DropShadowFilter(0,0,0,1,6,6,1)];
         return;
      }

      private function fubaha(param1:Guzowoja) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.box_.addChild(param1);
         this.gujas.push(param1.textChanged);
         return;
      }

      private function pidiqyhas(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!=null)
         {
            this.tob=new Guzowoja().setSize(18).setColor(5746018);
            this.tob.setBold(true);
            this.tob.setAutoSize(TextFieldAutoSize.CENTER);
            this.tob.filters=[new DropShadowFilter(0,0,0,1,8,8,1)];
            this.tob.setStringBuilder(new Kybidu().setParams(param1));
            this.fubaha(this.tob);
         }
         return;
      }

      private function kuho() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.rasajugyq!=null)
         {
            this.leftButton=new Tivinu(16,this.rasajugyq,120);
            this.leftButton.addEventListener(MouseEvent.CLICK,this.dininako);
         }
         if(this.ciqe!=null)
         {
            this.rightButton=new Tivinu(16,this.ciqe,120);
            this.rightButton.addEventListener(MouseEvent.CLICK,this.qipopev);
         }
         return;
      }

      private function onComplete() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.draw();
         this.kusirure();
         return;
      }

      private function kusirure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.box_.x=this.hitysifeb+this.gap.kikasybah()/2-this.box_.width/2;
         this.box_.y=this.bideb+this.gap.tomiqu()/2-this.getBoxHeight()/2;
         if(this.rum!=null)
         {
            this.filin();
         }
         return;
      }

      private function filin() : void {
         try
         {
            GA.global().trackPageview(this.rum);
         }
         catch(error:Error)
         {
         }
         return;
      }

      private function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mymilygid();
         this.drawAdditionalUI();
         this.moroz();
         return;
      }

      protected function drawAdditionalUI() : void {
         return;
      }

      protected function moroz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.box_.contains(this.rect_))
         {
            this.box_.removeChild(this.rect_);
         }
         this.fegy();
         this.dar();
         this.guviqejy();
         this.drawGraphicsTemplate();
         this.box_.addChildAt(this.rect_,0);
         this.box_.filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      protected function drawGraphicsTemplate() : void {
         return;
      }

      private function guviqejy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(0,0,this.lavi,this.getBoxHeight()+this.cyni,4,[1,1,1,1],this.path_);
         var _loc1_:Graphics = this.rect_.graphics;
         _loc1_.clear();
         _loc1_.drawGraphicsData(this.graphicsData_);
         return;
      }

      protected function getBoxHeight() : Number {
         return this.box_.height;
      }

      private function dar() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         if(this.leftButton!=null)
         {
            _loc1_=this.box_.height+this.vytozof;
            this.box_.addChild(this.leftButton);
            this.leftButton.y=_loc1_;
            if(this.rightButton==null)
            {
               this.leftButton.x=this.lavi/2-this.leftButton.width/2;
            }
            else
            {
               this.leftButton.x=this.lavi/4-this.leftButton.width/2;
               this.box_.addChild(this.rightButton);
               this.rightButton.x=3*this.lavi/4-this.rightButton.width/2;
               this.rightButton.y=_loc1_;
            }
         }
         return;
      }

      private function mymilygid() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tob!=null)
         {
            this.tob.x=this.lavi/2;
            this.tob.y=this.qipuvymo;
            this.wybibe.y=this.tob.height+this.tepytu;
         }
         else
         {
            this.wybibe.y=4;
         }
         return;
      }

      private function fegy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
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

      protected function dininako(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(LEFT_BUTTON));
         return;
      }

      protected function qipopev(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(RIGHT_BUTTON));
         return;
      }
   }

}