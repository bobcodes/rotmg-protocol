package com.company.assembleegameclient.ui
{
[CLASS894]   import flash.display.Sprite;
   import flash.display.Graphics;
   import flash.geom.Rectangle;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;


   public class Gogo extends Sprite
   {
      public function Gogo(param1:int, param2:int, param3:Number=1.0) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mowejyman=new GraphicsSolidFill(16777215,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.mowejyman;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         super();
         this.background_=new Sprite();
         this.background_.addEventListener(MouseEvent.MOUSE_DOWN,this.tibydonan);
         addChild(this.background_);
         this.doga=this.fane(this.panarace);
         addChild(this.doga);
         this.byr=this.fane(this.qore);
         addChild(this.byr);
         this.ticet=this.fane(this.ziwo);
         addChild(this.ticet);
         this.resize(param1,param2,param3);
         return;
      }

      private static function cuwutez(param1:int, param2:int, param3:Graphics) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param3.clear();
         param3.beginFill(3487029,0.01);
         param3.drawRect(-param1/2,-param2/2,param1,param2);
         param3.endFill();
         param3.beginFill(16777215,1);
         param3.moveTo(-param1/2,-param2/2);
         param3.lineTo(param1/2,0);
         param3.lineTo(-param1/2,param2/2);
         param3.lineTo(-param1/2,-param2/2);
         param3.endFill();
         return;
      }

      private var width_:int;

      private var height_:int;

      private var speed_:Number;

      private var rarif:Rectangle;

      private var bicidug:Number;

      private var background_:Sprite;

      private var doga:Sprite;

      private var byr:Sprite;

      private var ticet:Sprite;

      public function repofav() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.ticet.y-this.rarif.y)/(this.rarif.height-this.ticet.height);
      }

      public function jewojomyb(param1:Number, param2:Number, param3:Boolean=true) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:int = param2==0?this.rarif.height:param1/param2*this.rarif.height;
         _loc4_=Math.min(this.rarif.height,Math.max(this.width_,_loc4_));
         this.remafave(this.width_,_loc4_,this.ticet.graphics);
         this.bicidug=param1/(param2-param1);
         if(param3)
         {
            this.fifywuw(0.0);
         }
         return;
      }

      public function fifywuw(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var param1:Number = Math.max(0,Math.min(1,param1));
         this.ticet.y=param1*(this.rarif.height-this.ticet.height)+this.rarif.y;
         this.qivuqyf();
         return;
      }

      public function gunib() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fifywuw(this.repofav()-this.bicidug);
         return;
      }

      public function mivego() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fifywuw(this.repofav()+this.bicidug);
         return;
      }

      private function fane(param1:Function) : Sprite {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = new Sprite();
         _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,param1);
         _loc2_.addEventListener(MouseEvent.ROLL_OVER,this.kofus);
         _loc2_.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return _loc2_;
      }

      private function kofus(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.target as Sprite;
         _loc2_.transform.colorTransform=new ColorTransform(1,0.8627,0.5216);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.target as Sprite;
         _loc2_.transform.colorTransform=new ColorTransform(1,1,1);
         return;
      }

      private function tibydonan(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.localY<this.ticet.y)
         {
            this.gunib();
         }
         else
         {
            this.mivego();
         }
         return;
      }

      private var wejyd:int;

      private var wifuhen:Number;

      private function panarace(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.lyh);
         addEventListener(MouseEvent.MOUSE_UP,this.qaqakejo);
         this.wejyd=getTimer();
         this.wifuhen=-this.speed_;
         return;
      }

      private function qore(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.lyh);
         addEventListener(MouseEvent.MOUSE_UP,this.qaqakejo);
         this.wejyd=getTimer();
         this.wifuhen=this.speed_;
         return;
      }

      private function lyh(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = getTimer();
         var _loc3_:Number = (_loc2_-this.wejyd)/1000;
         var _loc4_:int = (this.height_-this.width_*3)*_loc3_*this.wifuhen;
         this.fifywuw((this.ticet.y+_loc4_-this.rarif.y)/(this.rarif.height-this.ticet.height));
         this.wejyd=_loc2_;
         return;
      }

      private function qaqakejo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.lyh);
         removeEventListener(MouseEvent.MOUSE_UP,this.qaqakejo);
         return;
      }

      private function ziwo(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ticet.startDrag(false,new Rectangle(0,this.rarif.y,0,this.rarif.height-this.ticet.height));
         stage.addEventListener(MouseEvent.MOUSE_UP,this.nigerykaw);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.cabane);
         this.qivuqyf();
         return;
      }

      private function nigerykaw(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.nigerykaw);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.cabane);
         this.ticet.stopDrag();
         this.qivuqyf();
         return;
      }

      private function cabane(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qivuqyf();
         return;
      }

      private function qivuqyf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      public function resize(param1:int, param2:int, param3:Number=1.0) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.width_=param1;
         this.height_=param2;
         this.speed_=param3;
         var _loc4_:int = this.width_*0.75;
         this.rarif=new Rectangle(0,_loc4_+5,this.width_,this.height_-_loc4_*2-10);
         var _loc5_:Graphics = this.background_.graphics;
         _loc5_.clear();
         _loc5_.beginFill(5526612,1);
         _loc5_.drawRect(this.rarif.x,this.rarif.y,this.rarif.width,this.rarif.height);
         _loc5_.endFill();
         cuwutez(_loc4_,this.width_,this.doga.graphics);
         this.doga.rotation=-90;
         this.doga.x=this.width_/2;
         this.doga.y=_loc4_/2;
         cuwutez(_loc4_,this.width_,this.byr.graphics);
         this.byr.x=this.width_/2;
         this.byr.y=this.height_-_loc4_/2;
         this.byr.rotation=90;
         this.remafave(this.width_,this.height_,this.ticet.graphics);
         this.ticet.x=0;
         this.ticet.y=this.rarif.y;
         return;
      }

      private var mowejyman:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      private function remafave(param1:int, param2:int, param3:Graphics) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,param1,param2,4,[1,1,1,1],this.path_);
         param3.clear();
         param3.drawGraphicsData(this.graphicsData_);
         return;
      }
   }
[/CLASS]
}