package vysob
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import flash.display.Shape;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import com.company.assembleegameclient.util.Cokinomu;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import wenono.Nuri;
   import flash.text.TextFieldAutoSize;
   import jediwip.Vofezuzy;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import com.company.googleanalytics.GA;
   import com.company.util.Dyrejocu;
   import flash.display.Graphics;
   import flash.events.Event;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import qykifavol.Rulavowaz;


   public class ErrorDialog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ErrorDialog(param1:String) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.box_=new Sprite();
         this.rect_=new Shape();
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
         super();
         var _loc2_:String = ["An error has occured:",param1].join("\n");
         this.gap=new Cokinomu(this);
         this.rum="/error";
         this.sobadeqoz(_loc2_,"D\'oh, this isn\'t good","ErrorWindow.buttonOK",null);
         this.makeUIAndAdd();
         this.gujas.complete.addOnce(this.onComplete);
         addChild(this.box_);
         this.ok=new Rulavowaz(this,Dialog.LEFT_BUTTON);
         return;
      }

      public static const ratuz:int = 11776947;

      protected static const WIDTH:int = 300;

      public var ok:Qanyduk;

      public var box_:Sprite;

      public var rect_:Shape;

      public var wybibe:Guzowoja;

      public var tob:Guzowoja = null;

      public var button1_:Tivinu = null;

      public var button2_:Tivinu = null;

      public var rum:String = null;

      public var hitysifeb:Number = 0;

      public var bideb:Number = 0;

      public var gap:Cokinomu;

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var dudoja:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected var gujas:Nuri;

      private function sobadeqoz(param1:String, param2:String, param3:String, param4:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.initText(param1);
         this.fubaha(this.wybibe);
         this.pidiqyhas(param2);
         this.kuho(param3,param4);
         return;
      }

      protected function makeUIAndAdd() : void {
         return;
      }

      protected function initText(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wybibe=new Guzowoja().setSize(14).setColor(ratuz);
         this.wybibe.setTextWidth(WIDTH-40);
         this.wybibe.x=20;
         this.wybibe.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.wybibe.setStringBuilder(new Vofezuzy(param1));
         this.wybibe.mouseEnabled=true;
         this.wybibe.filters=[new DropShadowFilter(0,0,0,1,6,6,1)];
         return;
      }

      private function fubaha(param1:Guzowoja) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
            this.tob.setTextWidth(WIDTH);
            this.tob.setBold(true);
            this.tob.setAutoSize(TextFieldAutoSize.CENTER);
            this.tob.filters=[new DropShadowFilter(0,0,0,1,8,8,1)];
            this.tob.setStringBuilder(new Vofezuzy(param1));
            this.fubaha(this.tob);
         }
         return;
      }

      private function kuho(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1!=null)
         {
            this.button1_=new Tivinu(16,param1,120);
            this.button1_.addEventListener(MouseEvent.CLICK,this.onButton1Click);
         }
         if(param2!=null)
         {
            this.button2_=new Tivinu(16,param2,120);
            this.button2_.addEventListener(MouseEvent.CLICK,this.onButton2Click);
         }
         return;
      }

      private function onComplete() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
         this.box_.addChildAt(this.rect_,0);
         this.box_.filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      private function guviqejy() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(0,0,WIDTH,this.getBoxHeight()+10,4,[1,1,1,1],this.path_);
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

      private function fegy() : void {
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

      private function mymilygid() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.tob!=null)
         {
            this.tob.y=2;
            this.wybibe.y=this.tob.height+8;
         }
         else
         {
            this.wybibe.y=4;
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

      public function fyfyrahuj(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rect_.alpha=param1>1?1:param1<0?0:param1;
         return;
      }
   }

}