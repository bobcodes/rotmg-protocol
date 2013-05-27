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
   import com.company.util.Tizulo;


   public class Tira extends Sprite
   {
      public function Tira(param1:int, param2:int, param3:Number=1.0) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.bolu=new GraphicsSolidFill(16777215,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.bolu;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         super();
         this.background_=new Sprite();
         this.background_.addEventListener(MouseEvent.MOUSE_DOWN,this.foqecuwa);
         addChild(this.background_);
         this.bepacagaz=this.teryligiw(this.ledyvutac);
         addChild(this.bepacagaz);
         this.kupydet=this.teryligiw(this.corawa);
         addChild(this.kupydet);
         this.basuqopy=this.teryligiw(this.gut);
         addChild(this.basuqopy);
         this.resize(param1,param2,param3);
         return;
      }

      private static function merutybyn(param1:int, param2:int, param3:Graphics) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
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

      private var dolon:Rectangle;

      private var kaqi:Number;

      private var background_:Sprite;

      private var bepacagaz:Sprite;

      private var kupydet:Sprite;

      private var basuqopy:Sprite;

      public function cimubito() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.basuqopy.y-this.dolon.y)/(this.dolon.height-this.basuqopy.height);
      }

      public function jyqecubi(param1:Number, param2:Number, param3:Boolean=true) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:int = param2==0?this.dolon.height:param1/param2*this.dolon.height;
         _loc4_=Math.min(this.dolon.height,Math.max(this.width_,_loc4_));
         this.jajulu(this.width_,_loc4_,this.basuqopy.graphics);
         this.kaqi=param1/(param2-param1);
         if(param3)
         {
            this.ricos(0.0);
         }
         return;
      }

      public function ricos(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var param1:Number = Math.max(0,Math.min(1,param1));
         this.basuqopy.y=param1*(this.dolon.height-this.basuqopy.height)+this.dolon.y;
         this.sic();
         return;
      }

      public function faw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ricos(this.cimubito()-this.kaqi);
         return;
      }

      public function lavuvy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ricos(this.cimubito()+this.kaqi);
         return;
      }

      private function teryligiw(param1:Function) : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = new Sprite();
         _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,param1);
         _loc2_.addEventListener(MouseEvent.ROLL_OVER,this.duby);
         _loc2_.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return _loc2_;
      }

      private function duby(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
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

      private function foqecuwa(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.localY<this.basuqopy.y)
         {
            this.faw();
         }
         else
         {
            this.lavuvy();
         }
         return;
      }

      private var rolaboh:int;

      private var cypidukyf:Number;

      private function ledyvutac(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.wadinan);
         addEventListener(MouseEvent.MOUSE_UP,this.lelyno);
         this.rolaboh=getTimer();
         this.cypidukyf=-this.speed_;
         return;
      }

      private function corawa(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.wadinan);
         addEventListener(MouseEvent.MOUSE_UP,this.lelyno);
         this.rolaboh=getTimer();
         this.cypidukyf=this.speed_;
         return;
      }

      private function wadinan(param1:Event) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = getTimer();
         var _loc3_:Number = (_loc2_-this.rolaboh)/1000;
         var _loc4_:int = (this.height_-this.width_*3)*_loc3_*this.cypidukyf;
         this.ricos((this.basuqopy.y+_loc4_-this.dolon.y)/(this.dolon.height-this.basuqopy.height));
         this.rolaboh=_loc2_;
         return;
      }

      private function lelyno(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.wadinan);
         removeEventListener(MouseEvent.MOUSE_UP,this.lelyno);
         return;
      }

      private function gut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.basuqopy.startDrag(false,new Rectangle(0,this.dolon.y,0,this.dolon.height-this.basuqopy.height));
         stage.addEventListener(MouseEvent.MOUSE_UP,this.ducidu);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.cyleq);
         this.sic();
         return;
      }

      private function ducidu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.ducidu);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.cyleq);
         this.basuqopy.stopDrag();
         this.sic();
         return;
      }

      private function cyleq(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sic();
         return;
      }

      private function sic() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      public function resize(param1:int, param2:int, param3:Number=1.0) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.width_=param1;
         this.height_=param2;
         this.speed_=param3;
         var _loc4_:int = this.width_*0.75;
         this.dolon=new Rectangle(0,_loc4_+5,this.width_,this.height_-_loc4_*2-10);
         var _loc5_:Graphics = this.background_.graphics;
         _loc5_.clear();
         _loc5_.beginFill(5526612,1);
         _loc5_.drawRect(this.dolon.x,this.dolon.y,this.dolon.width,this.dolon.height);
         _loc5_.endFill();
         merutybyn(_loc4_,this.width_,this.bepacagaz.graphics);
         this.bepacagaz.rotation=-90;
         this.bepacagaz.x=this.width_/2;
         this.bepacagaz.y=_loc4_/2;
         merutybyn(_loc4_,this.width_,this.kupydet.graphics);
         this.kupydet.x=this.width_/2;
         this.kupydet.y=this.height_-_loc4_/2;
         this.kupydet.rotation=90;
         this.jajulu(this.width_,this.height_,this.basuqopy.graphics);
         this.basuqopy.x=0;
         this.basuqopy.y=this.dolon.y;
         return;
      }

      private var bolu:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      private function jajulu(param1:int, param2:int, param3:Graphics) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,param1,param2,4,[1,1,1,1],this.path_);
         param3.clear();
         param3.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}