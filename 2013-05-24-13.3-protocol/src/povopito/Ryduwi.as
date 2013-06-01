package povopito
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import ruwysepyd.Junefolef;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.company.util.Tizulo;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Ryduwi extends Sprite
   {
      public function Ryduwi(param1:uint, param2:Number, param3:uint, param4:Number, param5:Boolean=true) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.bolu=new GraphicsSolidFill(0,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.cedit=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.cedit;
         new Vector.<IGraphicsData>(5)[1]=this.bolu;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Tizulo.gejyd;
         super();
         this.background_=param1;
         this.fiwo=param2;
         this.bibafyqi=param3;
         this.magyn=param4;
         this.carobolyw=param5;
         mouseEnabled=false;
         mouseChildren=false;
         filters=[new DropShadowFilter(0,0,0,1,16,16)];
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.jiguvovu.complete.add(this.gaz);
         return;
      }

      private var background_:uint;

      private var fiwo:Number;

      private var bibafyqi:uint;

      private var magyn:Number;

      private var carobolyw:Boolean;

      public var gahyk:int;

      public var noga:int;

      private var lulil:DisplayObject;

      private var bolu:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected const jiguvovu:Junefolef = new Junefolef();

      private function gaz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.alignUI();
         this.draw();
         this.position();
         return;
      }

      protected function alignUI() : void {
         return;
      }

      public function saqazuqebu(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.lulil=param1;
            this.lulil.addEventListener(MouseEvent.ROLL_OUT,this.roqiqowiz);
         }
         return;
      }

      public function wehovafut() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.lulil)
         {
            this.lulil.removeEventListener(MouseEvent.ROLL_OUT,this.roqiqowiz);
            if(parent)
            {
               parent.removeChild(this);
            }
            this.lulil=null;
         }
         return;
      }

      private function roqiqowiz(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wehovafut();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.jiguvovu.isEmpty())
         {
            this.draw();
         }
         if(this.carobolyw)
         {
            this.position();
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.carobolyw)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.position();
         return;
      }

      protected function position() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(stage==null)
         {
            return;
         }
         if(stage.mouseX<stage.stageWidth/2)
         {
            x=stage.mouseX+12;
         }
         else
         {
            x=stage.mouseX-width-1;
         }
         if(x<12)
         {
            x=12;
         }
         if(stage.mouseY<stage.stageHeight/3)
         {
            y=stage.mouseY+12;
         }
         else
         {
            y=stage.mouseY-height-1;
         }
         if(y<12)
         {
            y=12;
         }
         return;
      }

      public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bolu.color=this.background_;
         this.bolu.alpha=this.fiwo;
         this.outlineFill_.color=this.bibafyqi;
         this.outlineFill_.alpha=this.magyn;
         graphics.clear();
         this.gahyk=width;
         this.noga=height;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(-6,-6,this.gahyk+12,this.noga+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}