package pigeguwo
{
[CLASS269]   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import tidi.Dak;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.company.util.Nosupygu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Jazyv extends Sprite
   {
      public function Jazyv(param1:uint, param2:Number, param3:uint, param4:Number, param5:Boolean=true) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.mowejyman=new GraphicsSolidFill(0,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.deb=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.deb;
         new Vector.<IGraphicsData>(5)[1]=this.mowejyman;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Nosupygu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Nosupygu.puzy;
         super();
         this.background_=param1;
         this.kuqomidu=param2;
         this.tewybyl=param3;
         this.memyrazum=param4;
         this.susece=param5;
         mouseEnabled=false;
         mouseChildren=false;
         filters=[new DropShadowFilter(0,0,0,1,16,16)];
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.juwocez.complete.add(this.tagiwin);
         return;
      }

      private var background_:uint;

      private var kuqomidu:Number;

      private var tewybyl:uint;

      private var memyrazum:Number;

      private var susece:Boolean;

      public var rer:int;

      public var doby:int;

      private var wufakymun:DisplayObject;

      private var mowejyman:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected const juwocez:Dak = new Dak();

      private function tagiwin() : void {
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

      public function quzefobaj(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.wufakymun=param1;
            this.wufakymun.addEventListener(MouseEvent.ROLL_OUT,this.nisafoh);
         }
         return;
      }

      public function gyqihib() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.wufakymun)
         {
            this.wufakymun.removeEventListener(MouseEvent.ROLL_OUT,this.nisafoh);
            if(parent)
            {
               parent.removeChild(this);
            }
            this.wufakymun=null;
         }
         return;
      }

      private function nisafoh(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gyqihib();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.juwocez.isEmpty())
         {
            this.draw();
         }
         if(this.susece)
         {
            this.position();
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.susece)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         this.mowejyman.color=this.background_;
         this.mowejyman.alpha=this.kuqomidu;
         this.outlineFill_.color=this.tewybyl;
         this.outlineFill_.alpha=this.memyrazum;
         graphics.clear();
         this.rer=width;
         this.doby=height;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(-6,-6,this.rer+12,this.doby+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }
[/CLASS]
}