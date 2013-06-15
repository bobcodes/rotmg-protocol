package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
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
   import com.company.util.Dyrejocu;


   public class Gequrenaj extends Sprite
   {
      public function Gequrenaj(param1:int, param2:int, param3:Number=1.0) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.dudoja=new GraphicsSolidFill(16777215,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.dudoja;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         super();
         this.background_=new Sprite();
         this.background_.addEventListener(MouseEvent.MOUSE_DOWN,this.zavah);
         addChild(this.background_);
         this.nic=this.hefukohe(this.rynije);
         addChild(this.nic);
         this.detypis=this.hefukohe(this.bapi);
         addChild(this.detypis);
         this.jew=this.hefukohe(this.qor);
         addChild(this.jew);
         this.resize(param1,param2,param3);
         return;
      }

      private static function riqela(param1:int, param2:int, param3:Graphics) : void {
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

      private var goroca:Rectangle;

      private var quwikipi:Number;

      private var background_:Sprite;

      private var nic:Sprite;

      private var detypis:Sprite;

      private var jew:Sprite;

      public function devaqe() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.jew.y-this.goroca.y)/(this.goroca.height-this.jew.height);
      }

      public function vyhojig(param1:Number, param2:Number, param3:Boolean=true) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:int = param2==0?this.goroca.height:param1/param2*this.goroca.height;
         _loc4_=Math.min(this.goroca.height,Math.max(this.width_,_loc4_));
         this.givynudeb(this.width_,_loc4_,this.jew.graphics);
         this.quwikipi=param1/(param2-param1);
         if(param3)
         {
            this.quwakeco(0.0);
         }
         return;
      }

      public function quwakeco(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var param1:Number = Math.max(0,Math.min(1,param1));
         this.jew.y=param1*(this.goroca.height-this.jew.height)+this.goroca.y;
         this.pewafihod();
         return;
      }

      public function jido() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.quwakeco(this.devaqe()-this.quwikipi);
         return;
      }

      public function bosabo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.quwakeco(this.devaqe()+this.quwikipi);
         return;
      }

      private function hefukohe(param1:Function) : Sprite {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = new Sprite();
         _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,param1);
         _loc2_.addEventListener(MouseEvent.ROLL_OVER,this.bebavub);
         _loc2_.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return _loc2_;
      }

      private function bebavub(param1:MouseEvent) : void {
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

      private function zavah(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.localY<this.jew.y)
         {
            this.jido();
         }
         else
         {
            this.bosabo();
         }
         return;
      }

      private var bys:int;

      private var ripasovih:Number;

      private function rynije(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addEventListener(Event.ENTER_FRAME,this.vovone);
         addEventListener(MouseEvent.MOUSE_UP,this.paf);
         this.bys=getTimer();
         this.ripasovih=-this.speed_;
         return;
      }

      private function bapi(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addEventListener(Event.ENTER_FRAME,this.vovone);
         addEventListener(MouseEvent.MOUSE_UP,this.paf);
         this.bys=getTimer();
         this.ripasovih=this.speed_;
         return;
      }

      private function vovone(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = getTimer();
         var _loc3_:Number = (_loc2_-this.bys)/1000;
         var _loc4_:int = (this.height_-this.width_*3)*_loc3_*this.ripasovih;
         this.quwakeco((this.jew.y+_loc4_-this.goroca.y)/(this.goroca.height-this.jew.height));
         this.bys=_loc2_;
         return;
      }

      private function paf(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.vovone);
         removeEventListener(MouseEvent.MOUSE_UP,this.paf);
         return;
      }

      private function qor(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jew.startDrag(false,new Rectangle(0,this.goroca.y,0,this.goroca.height-this.jew.height));
         stage.addEventListener(MouseEvent.MOUSE_UP,this.dyse);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.wave);
         this.pewafihod();
         return;
      }

      private function dyse(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.dyse);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.wave);
         this.jew.stopDrag();
         this.pewafihod();
         return;
      }

      private function wave(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pewafihod();
         return;
      }

      private function pewafihod() : void {
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
         this.goroca=new Rectangle(0,_loc4_+5,this.width_,this.height_-_loc4_*2-10);
         var _loc5_:Graphics = this.background_.graphics;
         _loc5_.clear();
         _loc5_.beginFill(5526612,1);
         _loc5_.drawRect(this.goroca.x,this.goroca.y,this.goroca.width,this.goroca.height);
         _loc5_.endFill();
         riqela(_loc4_,this.width_,this.nic.graphics);
         this.nic.rotation=-90;
         this.nic.x=this.width_/2;
         this.nic.y=_loc4_/2;
         riqela(_loc4_,this.width_,this.detypis.graphics);
         this.detypis.x=this.width_/2;
         this.detypis.y=this.height_-_loc4_/2;
         this.detypis.rotation=90;
         this.givynudeb(this.width_,this.height_,this.jew.graphics);
         this.jew.x=0;
         this.jew.y=this.goroca.y;
         return;
      }

      private var dudoja:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      private function givynudeb(param1:int, param2:int, param3:Graphics) : void {
         var [OFS3]_loc4_:* = [/OFS]false;
         var [OFS5]_loc5_:* = [/OFS]true;
         [OFS9]Dyrejocu[/OFS].[OFS15]gorudy[/OFS][OFS15]([/OFS]this.[OFS12]path_[/OFS][OFS15])[/OFS];
         [OFS19]Dyrejocu[/OFS].[OFS40]moluv[/OFS][OFS40]([/OFS][OFS21]0[/OFS][OFS40],[/OFS][OFS21]0[/OFS][OFS40],[/OFS][OFS24]param1[/OFS][OFS40],[/OFS][OFS25]param2[/OFS][OFS40],[/OFS][OFS26]4[/OFS][OFS40],[/OFS][OFS34][[/OFS][OFS28]1[/OFS],[OFS28]1[/OFS],[OFS28]1[/OFS],[OFS32]1[/OFS][OFS34]][/OFS][OFS40],[/OFS]this.[OFS37]path_[/OFS][OFS40])[/OFS];
         [OFS44]param3[/OFS].[OFS45]clear[/OFS][OFS45]([/OFS][OFS45])[/OFS];
         [OFS48]param3[/OFS].drawGraphicsData(this.[OFS50]graphicsData_[/OFS]);
         return;
      }
   }

}