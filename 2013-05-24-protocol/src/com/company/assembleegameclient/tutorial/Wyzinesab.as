package com.company.assembleegameclient.tutorial
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.utils.getTimer;
   import flash.events.Event;
   import com.company.util.Tizulo;
   import flash.events.MouseEvent;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import nec.Sire;


   public class Wyzinesab extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wyzinesab(param1:Tutorial, param2:String, param3:Boolean, param4:Rectangle) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.qofad=new GraphicsSolidFill(3552822,1);
         this.cedit=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,new GraphicsSolidFill(16777215));
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.cedit;
         new Vector.<IGraphicsData>(5)[1]=this.qofad;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Tizulo.gejyd;
         super();
         this.tutorial_=param1;
         this.rect_=param4.clone();
         x=this.rect_.x;
         y=this.rect_.y;
         this.rect_.x=0;
         this.rect_.y=0;
         this.gifu=new Lufub().setSize(15).setColor(16777215).setTextWidth(this.rect_.width-4*BORDER);
         this.gifu.setStringBuilder(new Sire().setParams(param2));
         this.gifu.x=2*BORDER;
         this.gifu.y=2*BORDER;
         if(param3)
         {
            this.dyd=new Dogyqijec(18,"Next");
            this.dyd.addEventListener(MouseEvent.CLICK,this.suroqo);
            this.dyd.x=this.rect_.width-this.dyd.width-20;
            this.dyd.y=this.rect_.height-this.dyd.height-10;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const BORDER:int = 8;

      private var tutorial_:Tutorial;

      private var rect_:Rectangle;

      private var gifu:Lufub;

      private var dyd:Dogyqijec = null;

      private var startTime_:int;

      private var qofad:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function drawRect() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Number = Math.min(1,0.1+0.9*(getTimer()-this.startTime_)/200);
         if(_loc1_==1)
         {
            addChild(this.gifu);
            if(this.dyd!=null)
            {
               addChild(this.dyd);
            }
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         var _loc2_:Rectangle = this.rect_.clone();
         _loc2_.inflate(-(1-_loc1_)*this.rect_.width/2,-(1-_loc1_)*this.rect_.height/2);
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(_loc2_.x,_loc2_.y,_loc2_.width,_loc2_.height,4,[1,1,1,1],this.path_);
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.startTime_=getTimer();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.drawRect();
         return;
      }

      private function suroqo(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tutorial_.doneAction(Tutorial.nibudo);
         return;
      }
   }

}