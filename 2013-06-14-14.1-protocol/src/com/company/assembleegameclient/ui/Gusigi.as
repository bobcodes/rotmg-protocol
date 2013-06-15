package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import hivysif.Liwyny;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GraphicsSolidFill;
   import com.company.util.Dyrejocu;
   import flash.display.GraphicsStroke;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.utils.getTimer;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import hivysif.Guzowoja;


   public class Gusigi extends Sikosy
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Gusigi(param1:int, param2:int=0) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param2);
         this.nyqofute();
         this.liryhoh=getTimer();
         this.gabot=new Liwyny();
         this.gabot.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         this.gabot.setSize(param1).setColor(3552822).setBold(true);
         this.gabot.setStringBuilder(new Kybidu().setParams(Vibemod.lyf));
         w_=param2!=0?param2:this.gabot.width+12;
         this.h_=this.gabot.height+8;
         this.gabot.x=w_/2;
         this.gabot.y=this.h_/2;
         Dyrejocu.gorudy(path_);
         Dyrejocu.moluv(0,0,w_,this.gabot.height+8,4,[1,1,1,1],path_);
         this.nyjad=this.meqikife();
         addChild(this.nyjad);
         addChild(this.gabot);
         this.draw();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      private static const kavypip:int = 2999;

      private static const pesi:int = 0;

      private static const zir:int = 1;

      private static const ginupuca:int = 2;

      private static const kywo:int = 3;

      public var nyjad:Sprite;

      public var qijumy:Shape;

      public var gabot:Liwyny;

      public var h_:int;

      private var doqiwo:int;

      private var liryhoh:int;

      private var nife:Vector.<IGraphicsData>;

      private var outlineGraphicsData_:Vector.<IGraphicsData>;

      private function nyqofute() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(12566463,1);
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=path_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         this.nife=new Vector.<IGraphicsData>(3);
         var _loc2_:GraphicsSolidFill = new GraphicsSolidFill(16777215,1);
         var _loc3_:GraphicsStroke = new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,_loc2_);
         new Vector.<IGraphicsData>(3)[0]=_loc3_;
         new Vector.<IGraphicsData>(3)[1]=path_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.jydebugu;
         this.outlineGraphicsData_=new Vector.<IGraphicsData>(3);
         return;
      }

      public function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.liryhoh=getTimer();
         this.doqiwo=pesi;
         this.setEnabled(false);
         this.kenadyb(Vibemod.lyf);
         return;
      }

      public function disable() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.doqiwo=kywo;
         this.setEnabled(false);
         this.kenadyb(Vibemod.lyf);
         return;
      }

      private function kenadyb(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gabot.setStringBuilder(new Kybidu().setParams(param1));
         return;
      }

      private function setEnabled(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==mouseEnabled)
         {
            return;
         }
         mouseEnabled=param1;
         mouseChildren=param1;
         graphicsData_[0]=param1?zow:movi;
         this.draw();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.reset();
         this.draw();
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
         this.draw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         zow.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         zow.color=16777215;
         this.draw();
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.doqiwo=ginupuca;
         this.setEnabled(false);
         this.kenadyb(Vibemod.wohacu);
         return;
      }

      private function meqikife() : Sprite {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:Sprite = new Sprite();
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.clear();
         _loc3_.graphics.drawGraphicsData(this.nife);
         _loc2_.addChild(_loc3_);
         this.qijumy=new Shape();
         _loc2_.addChild(this.qijumy);
         _loc2_.mask=this.qijumy;
         _loc1_.addChild(_loc2_);
         var _loc4_:Shape = new Shape();
         _loc4_.graphics.clear();
         _loc4_.graphics.drawGraphicsData(this.outlineGraphicsData_);
         _loc1_.addChild(_loc4_);
         return _loc1_;
      }

      private function difulesose(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qijumy.graphics.clear();
         this.qijumy.graphics.beginFill(12566463);
         this.qijumy.graphics.drawRect(0,0,w_*param1,this.h_);
         this.qijumy.graphics.endFill();
         return;
      }

      private function draw() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = NaN;
         _loc1_=getTimer();
         if(this.doqiwo==pesi)
         {
            if(_loc1_-this.liryhoh>=kavypip)
            {
               this.doqiwo=zir;
               this.setEnabled(true);
            }
         }
         switch(this.doqiwo)
         {
            case pesi:
               this.nyjad.visible=true;
               _loc2_=(_loc1_-this.liryhoh)/kavypip;
               this.difulesose(_loc2_);
               break;
            case kywo:
            case zir:
            case ginupuca:
               this.nyjad.visible=false;
               break;
         }
         graphics.clear();
         graphics.drawGraphicsData(graphicsData_);
         return;
      }
   }

}