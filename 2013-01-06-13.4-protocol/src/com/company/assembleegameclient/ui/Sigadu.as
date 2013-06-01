package com.company.assembleegameclient.ui
{
[CLASS1611]   import flash.display.Sprite;
   import flash.display.Shape;
   import pudev.Qabyhofol;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GraphicsSolidFill;
   import com.company.util.Nosupygu;
   import flash.display.GraphicsStroke;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.utils.getTimer;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import pudev.Capitu;


   public class Sigadu extends Sugycoja
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Sigadu(param1:int, param2:int=0) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param2);
         this.kyrunu();
         this.myv=getTimer();
         this.tulanysi=new Qabyhofol();
         this.tulanysi.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         this.tulanysi.setSize(param1).setColor(3552822).setBold(true);
         this.tulanysi.setStringBuilder(new Zufi().setParams(Kefyfa.sago));
         w_=param2!=0?param2:this.tulanysi.width+12;
         this.h_=this.tulanysi.height+8;
         this.tulanysi.x=w_/2;
         this.tulanysi.y=this.h_/2;
         Nosupygu.jyrodepu(path_);
         Nosupygu.secebeq(0,0,w_,this.tulanysi.height+8,4,[1,1,1,1],path_);
         this.segoqu=this.sabus();
         addChild(this.segoqu);
         addChild(this.tulanysi);
         this.draw();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      private static const muwog:int = 2999;

      private static const kuta:int = 0;

      private static const molobivap:int = 1;

      private static const bobycycik:int = 2;

      private static const turymag:int = 3;

      public var segoqu:Sprite;

      public var ramyfeha:Shape;

      public var tulanysi:Qabyhofol;

      public var h_:int;

      private var dym:int;

      private var myv:int;

      private var sovaky:Vector.<IGraphicsData>;

      private var outlineGraphicsData_:Vector.<IGraphicsData>;

      private function kyrunu() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(12566463,1);
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=path_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         this.sovaky=new Vector.<IGraphicsData>(3);
         var _loc2_:GraphicsSolidFill = new GraphicsSolidFill(16777215,1);
         var _loc3_:GraphicsStroke = new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,_loc2_);
         new Vector.<IGraphicsData>(3)[0]=_loc3_;
         new Vector.<IGraphicsData>(3)[1]=path_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.puzy;
         this.outlineGraphicsData_=new Vector.<IGraphicsData>(3);
         return;
      }

      public function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.myv=getTimer();
         this.dym=kuta;
         this.setEnabled(false);
         this.rike(Kefyfa.sago);
         return;
      }

      public function disable() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dym=turymag;
         this.setEnabled(false);
         this.rike(Kefyfa.sago);
         return;
      }

      private function rike(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tulanysi.setStringBuilder(new Zufi().setParams(param1));
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
         graphicsData_[0]=param1?jenupy:ruwini;
         this.draw();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.reset();
         this.draw();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         jenupy.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         jenupy.color=16777215;
         this.draw();
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dym=bobycycik;
         this.setEnabled(false);
         this.rike(Kefyfa.sego);
         return;
      }

      private function sabus() : Sprite {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:Sprite = new Sprite();
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.clear();
         _loc3_.graphics.drawGraphicsData(this.sovaky);
         _loc2_.addChild(_loc3_);
         this.ramyfeha=new Shape();
         _loc2_.addChild(this.ramyfeha);
         _loc2_.mask=this.ramyfeha;
         _loc1_.addChild(_loc2_);
         var _loc4_:Shape = new Shape();
         _loc4_.graphics.clear();
         _loc4_.graphics.drawGraphicsData(this.outlineGraphicsData_);
         _loc1_.addChild(_loc4_);
         return _loc1_;
      }

      private function qekupa(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ramyfeha.graphics.clear();
         this.ramyfeha.graphics.beginFill(12566463);
         this.ramyfeha.graphics.drawRect(0,0,w_*param1,this.h_);
         this.ramyfeha.graphics.endFill();
         return;
      }

      private function draw() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = NaN;
         _loc1_=getTimer();
         if(this.dym==kuta)
         {
            if(_loc1_-this.myv>=muwog)
            {
               this.dym=molobivap;
               this.setEnabled(true);
            }
         }
         switch(this.dym)
         {
            case kuta:
               this.segoqu.visible=true;
               _loc2_=(_loc1_-this.myv)/muwog;
               this.qekupa(_loc2_);
               break;
            case turymag:
            case molobivap:
            case bobycycik:
               this.segoqu.visible=false;
               break;
         }
         graphics.clear();
         graphics.drawGraphicsData(graphicsData_);
         return;
      }
   }
[/CLASS]
}