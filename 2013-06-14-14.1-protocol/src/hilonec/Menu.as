package hilonec
{
   import flash.display.Sprite;
   import wenono.Cibibi;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import com.company.util.Baticor;
   import com.company.util.Dyrejocu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Menu extends Sprite implements Cibibi
   {
      public function Menu(param1:uint, param2:uint) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.dudoja=new GraphicsSolidFill(0,1);
         this.outlineFill_=new GraphicsSolidFill(0,1);
         this.dabyqeqi=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.dabyqeqi;
         new Vector.<IGraphicsData>(5)[1]=this.dudoja;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.jydebugu;
         super();
         this.background_=param1;
         this.birefyrek=param2;
         this.cizan=40;
         filters=[new DropShadowFilter(0,0,0,1,16,16)];
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var dudoja:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private var background_:uint;

      private var birefyrek:uint;

      private var cizan:int;

      protected function jobilu(param1:Vazodav) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.x=8;
         param1.y=this.cizan;
         addChild(param1);
         this.cizan=this.cizan+28;
         return;
      }

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.draw();
         this.position();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      protected function onEnterFrame(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(stage==null)
         {
            return;
         }
         var _loc2_:Rectangle = getRect(stage);
         var _loc3_:Number = Baticor.dosuc(_loc2_,stage.mouseX,stage.mouseY);
         if(_loc3_>40)
         {
            this.remove();
         }
         return;
      }

      private function position() : void {
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

      protected function onRollOut(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.remove();
         return;
      }

      protected function remove() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(parent!=null)
         {
            parent.removeChild(this);
         }
         return;
      }

      protected function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dudoja.color=this.background_;
         this.outlineFill_.color=this.birefyrek;
         graphics.clear();
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(-6,-6,Math.max(154,width+12),height+12,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}