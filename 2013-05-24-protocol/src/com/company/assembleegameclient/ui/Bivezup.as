package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import movimet.Riwemeno;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GraphicsSolidFill;
   import com.company.util.Tizulo;
   import flash.display.GraphicsStroke;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.utils.getTimer;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import movimet.Lufub;


   public class Bivezup extends Qikavajyw
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Bivezup(param1:int, param2:int=0) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param2);
         this.qepil();
         this.pomiko=getTimer();
         this.wonyr=new Riwemeno();
         this.wonyr.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         this.wonyr.setSize(param1).setColor(3552822).setBold(true);
         this.wonyr.setStringBuilder(new Sire().setParams(I18nKeys.hulimivab));
         w_=param2!=0?param2:this.wonyr.width+12;
         this.h_=this.wonyr.height+8;
         this.wonyr.x=w_/2;
         this.wonyr.y=this.h_/2;
         Tizulo.vomynaqu(path_);
         Tizulo.woforyzib(0,0,w_,this.wonyr.height+8,4,[1,1,1,1],path_);
         this.calujep=this.kawyp();
         addChild(this.calujep);
         addChild(this.wonyr);
         this.draw();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.zeg);
         return;
      }

      private static const vigulujy:int = 2999;

      private static const lanykydob:int = 0;

      private static const suzuqylu:int = 1;

      private static const laqobemed:int = 2;

      private static const bovymic:int = 3;

      public var calujep:Sprite;

      public var hikecon:Shape;

      public var wonyr:Riwemeno;

      public var h_:int;

      private var gyrehune:int;

      private var pomiko:int;

      private var byhi:Vector.<IGraphicsData>;

      private var outlineGraphicsData_:Vector.<IGraphicsData>;

      private function qepil() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(12566463,1);
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=path_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         this.byhi=new Vector.<IGraphicsData>(3);
         var _loc2_:GraphicsSolidFill = new GraphicsSolidFill(16777215,1);
         var _loc3_:GraphicsStroke = new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,_loc2_);
         new Vector.<IGraphicsData>(3)[0]=_loc3_;
         new Vector.<IGraphicsData>(3)[1]=path_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.gejyd;
         this.outlineGraphicsData_=new Vector.<IGraphicsData>(3);
         return;
      }

      public function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pomiko=getTimer();
         this.gyrehune=lanykydob;
         this.setEnabled(false);
         this.sonydiw(I18nKeys.hulimivab);
         return;
      }

      public function disable() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gyrehune=bovymic;
         this.setEnabled(false);
         this.sonydiw(I18nKeys.hulimivab);
         return;
      }

      private function sonydiw(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wonyr.setStringBuilder(new Sire().setParams(param1));
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
         graphicsData_[0]=param1?pilif:fawery;
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
         pilif.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         pilif.color=16777215;
         this.draw();
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gyrehune=laqobemed;
         this.setEnabled(false);
         this.sonydiw(I18nKeys.nimiruwil);
         return;
      }

      private function kawyp() : Sprite {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:Sprite = new Sprite();
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.clear();
         _loc3_.graphics.drawGraphicsData(this.byhi);
         _loc2_.addChild(_loc3_);
         this.hikecon=new Shape();
         _loc2_.addChild(this.hikecon);
         _loc2_.mask=this.hikecon;
         _loc1_.addChild(_loc2_);
         var _loc4_:Shape = new Shape();
         _loc4_.graphics.clear();
         _loc4_.graphics.drawGraphicsData(this.outlineGraphicsData_);
         _loc1_.addChild(_loc4_);
         return _loc1_;
      }

      private function wuh(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hikecon.graphics.clear();
         this.hikecon.graphics.beginFill(12566463);
         this.hikecon.graphics.drawRect(0,0,w_*param1,this.h_);
         this.hikecon.graphics.endFill();
         return;
      }

      private function draw() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = NaN;
         _loc1_=getTimer();
         if(this.gyrehune==lanykydob)
         {
            if(_loc1_-this.pomiko>=vigulujy)
            {
               this.gyrehune=suzuqylu;
               this.setEnabled(true);
            }
         }
         switch(this.gyrehune)
         {
            case lanykydob:
               this.calujep.visible=true;
               _loc2_=(_loc1_-this.pomiko)/vigulujy;
               this.wuh(_loc2_);
               break;
            case bovymic:
            case suzuqylu:
            case laqobemed:
               this.calujep.visible=false;
               break;
         }
         graphics.clear();
         graphics.drawGraphicsData(graphicsData_);
         return;
      }
   }

}