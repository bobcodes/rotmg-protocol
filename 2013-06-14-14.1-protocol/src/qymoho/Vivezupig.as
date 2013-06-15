package qymoho
{
   import flash.display.Sprite;
   import qykifavol.Hydydyqas;
   import mukyrosu.Qanyduk;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.Timer;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import jediwip.Vofezuzy;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import com.company.util.Dyrejocu;
   import com.company.util.MoreColorUtil;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.filters.DropShadowFilter;
   import flash.display.DisplayObject;


   public class Vivezupig extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vivezupig(param1:Array, param2:int) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:BitmapData = null;
         this.nojot=new GraphicsSolidFill(5526612,1);
         this.cusycuty=new GraphicsSolidFill(4078909,1);
         this.befe=new GraphicsSolidFill(2368034,1);
         this.bimekawa=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.nofujejo=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.nojot;
         new Vector.<IGraphicsData>(3)[1]=this.bimekawa;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         this.pijima=new Vector.<IGraphicsData>(3);
         new Vector.<IGraphicsData>(3)[0]=this.cusycuty;
         new Vector.<IGraphicsData>(3)[1]=this.bimekawa;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         this.soqutol=new Vector.<IGraphicsData>(3);
         new Vector.<IGraphicsData>(3)[0]=this.befe;
         new Vector.<IGraphicsData>(3)[1]=this.nofujejo;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         this.ropijogo=new Vector.<IGraphicsData>(3);
         super();
         mouseChildren=false;
         this.position=param2;
         this.cezugac=new ColorMatrixFilter(MoreColorUtil.fuguwo);
         _loc3_=AssetLibrary.tem("lofiObj3",225);
         _loc3_=TextureRedrawer.redraw(_loc3_,30,false,0,0);
         this.text=new Guzowoja().setSize(13).setColor(16777215).setTextWidth(curymemi).setTextHeight(cig);
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.text.y=4;
         this.govititiq=new Bitmap(_loc3_);
         this.govititiq.x=52;
         this.govititiq.y=-6;
         this.govititiq.visible=false;
         this.bg=new Sprite();
         Dyrejocu.gorudy(this.bimekawa);
         Dyrejocu.moluv(0,0,curymemi,cig,4,param1,this.bimekawa);
         Dyrejocu.moluv(2,2,curymemi-cutihet,cig-cutihet,4,param1,this.nofujejo);
         this.bg.graphics.drawGraphicsData(this.soqutol);
         this.bg.graphics.drawGraphicsData(this.ropijogo);
         addChild(this.bg);
         addChild(this.govititiq);
         addChild(this.text);
         this.jysozen=new Sprite();
         this.poniwamo=new Timer(jely,1);
         this.poniwamo.addEventListener(TimerEvent.TIMER_COMPLETE,this.lonuny);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.judeba=new Hydydyqas(this,MouseEvent.CLICK,MouseEvent);
         this.riq=new Qanyduk();
         this.dequle=new Qanyduk(DisplayObject);
         return;
      }

      public static var curymemi:int = 84;

      private static var cig:int = 24;

      private static var cutihet:int = 4;

      private static var cavota:int = 13;

      private static var nepeges:int = -6;

      private static const jely:uint = 250;

      private static const bigi:int = 3;

      public var position:int;

      public var objectType:int;

      public var judeba:Hydydyqas;

      public var riq:Qanyduk;

      public var dequle:Qanyduk;

      private var nojot:GraphicsSolidFill;

      private var cusycuty:GraphicsSolidFill;

      private var befe:GraphicsSolidFill;

      private var bimekawa:GraphicsPath;

      private var nofujejo:GraphicsPath;

      private var pijima:Vector.<IGraphicsData>;

      private var soqutol:Vector.<IGraphicsData>;

      private var ropijogo:Vector.<IGraphicsData>;

      private var text:Guzowoja;

      private var govititiq:Bitmap;

      private var jysozen:Sprite;

      private var tuzubowi:Bitmap;

      private var bg:Sprite;

      private var cezugac:ColorMatrixFilter;

      private var available:Boolean = false;

      private var poniwamo:Timer;

      private var rutot:Point;

      private var hyva:Boolean;

      private var fum:Boolean;

      public function raqy(param1:int, param2:int, param3:Boolean, param4:int=-1) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Bitmap = null;
         if(param4!=-1)
         {
            this.objectType=param4;
            if(this.tuzubowi!=null)
            {
               removeChild(this.tuzubowi);
            }
            _loc7_=ObjectLibrary.getRedrawnTextureFromType(param4,55,false);
            this.tuzubowi=new Bitmap(_loc7_);
            this.tuzubowi.y=-11;
            addChild(this.tuzubowi);
            _loc7_=ObjectLibrary.getRedrawnTextureFromType(param4,80,true);
            _loc8_=new Bitmap(_loc7_);
            _loc8_.x=_loc8_.x-30;
            _loc8_.y=_loc8_.y-30;
            this.jysozen.addChild(_loc8_);
         }
         this.available=param3;
         filters=param3?[]:[this.cezugac];
         var _loc5_:* = param1>0;
         if(_loc5_)
         {
            this.tybeny(String(param1));
            _loc6_=cavota;
            this.bg.graphics.clear();
            this.bg.graphics.drawGraphicsData(this.pijima);
            this.text.x=curymemi/2+5;
         }
         else
         {
            this.tybeny(String(param2));
            _loc6_=nepeges;
            this.bg.graphics.clear();
            this.bg.graphics.drawGraphicsData(this.soqutol);
            this.bg.graphics.drawGraphicsData(this.ropijogo);
            this.text.x=this.govititiq.x-this.text.width+6;
         }
         if(this.tuzubowi)
         {
            this.tuzubowi.x=_loc6_;
         }
         this.govititiq.visible=!_loc5_;
         return;
      }

      public function tybeny(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text.setStringBuilder(new Vofezuzy(param1));
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lulu(false);
         return;
      }

      private function honoraj(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.fum)
         {
            return;
         }
         if(param1.shiftKey)
         {
            this.lulu(false);
            this.riq.dispatch();
         }
         else
         {
            if(!this.hyva)
            {
               this.lulu(true);
            }
            else
            {
               this.lulu(false);
               this.riq.dispatch();
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.govititiq.visible)
         {
            this.gyna(param1);
         }
         return;
      }

      private function lulu(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hyva=param1;
         if(this.hyva)
         {
            this.poniwamo.reset();
            this.poniwamo.start();
         }
         else
         {
            this.poniwamo.stop();
         }
         return;
      }

      private function gyna(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rutot=new Point(param1.stageX,param1.stageY);
         addEventListener(MouseEvent.MOUSE_MOVE,this.loqywakepy);
         addEventListener(MouseEvent.MOUSE_OUT,this.rijibyfus);
         addEventListener(MouseEvent.MOUSE_UP,this.rijibyfus);
         return;
      }

      private function rijibyfus(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(MouseEvent.MOUSE_MOVE,this.loqywakepy);
         removeEventListener(MouseEvent.MOUSE_OUT,this.rijibyfus);
         removeEventListener(MouseEvent.MOUSE_UP,this.rijibyfus);
         return;
      }

      private function loqywakepy(param1:MouseEvent) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Number = param1.stageX-this.rutot.x;
         var _loc3_:Number = param1.stageY-this.rutot.y;
         var _loc4_:Number = Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
         if(_loc4_>bigi)
         {
            this.rijibyfus(null);
            this.lulu(false);
            this.biceju();
         }
         return;
      }

      private function lonuny(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lulu(false);
         return;
      }

      private function biceju() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fum=true;
         this.jysozen.startDrag(true);
         stage.addChild(this.jysozen);
         this.jysozen.addEventListener(MouseEvent.MOUSE_UP,this.rekyb);
         return;
      }

      private function rekyb(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fum=false;
         this.jysozen.stopDrag();
         this.jysozen.x=this.rutot.x;
         this.jysozen.y=this.rutot.y;
         stage.removeChild(this.jysozen);
         this.jysozen.removeEventListener(MouseEvent.MOUSE_UP,this.rekyb);
         this.dequle.dispatch(this.jysozen.dropTarget);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lulu(false);
         this.rijibyfus(null);
         if(this.fum)
         {
            this.jysozen.stopDrag();
         }
         return;
      }
   }

}