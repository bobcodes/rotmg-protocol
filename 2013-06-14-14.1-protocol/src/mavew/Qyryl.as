package mavew
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import wenono.Nuri;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.company.util.Dyrejocu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Qyryl extends Sprite
   {
      public function Qyryl(param1:uint, param2:Number, param3:uint, param4:Number, param5:Boolean=true) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.dudoja=new GraphicsSolidFill(0,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.dabyqeqi=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.dabyqeqi;
         new Vector.<IGraphicsData>(5)[1]=this.dudoja;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.jydebugu;
         super();
         this.background_=param1;
         this.rove=param2;
         this.birefyrek=param3;
         this.mupal=param4;
         this.hamyketa=param5;
         mouseEnabled=false;
         mouseChildren=false;
         filters=[new DropShadowFilter(0,0,0,1,16,16)];
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.ryfoc.complete.add(this.kisynu);
         return;
      }

      private var background_:uint;

      private var rove:Number;

      private var birefyrek:uint;

      private var mupal:Number;

      private var hamyketa:Boolean;

      public var ryve:int;

      public var zufuw:int;

      private var zihifoda:DisplayObject;

      private var dudoja:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      protected const ryfoc:Nuri = new Nuri();

      private function kisynu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.alignUI();
         this.draw();
         this.position();
         return;
      }

      protected function alignUI() : void {
         return;
      }

      public function pityvigim(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.zihifoda=param1;
            this.zihifoda.addEventListener(MouseEvent.ROLL_OUT,this.jijeqo);
         }
         return;
      }

      public function fyjyzab() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.zihifoda)
         {
            this.zihifoda.removeEventListener(MouseEvent.ROLL_OUT,this.jijeqo);
            if(parent)
            {
               parent.removeChild(this);
            }
            this.zihifoda=null;
         }
         return;
      }

      private function jijeqo(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fyjyzab();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.ryfoc.isEmpty())
         {
            this.draw();
         }
         if(this.hamyketa)
         {
            this.position();
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.hamyketa)
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dudoja.color=this.background_;
         this.dudoja.alpha=this.rove;
         this.outlineFill_.color=this.birefyrek;
         this.outlineFill_.alpha=this.mupal;
         graphics.clear();
         this.ryve=width;
         this.zufuw=height;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(-6,-6,this.ryve+12,this.zufuw+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}