package vahejo
{
   import flash.display.Sprite;
   import gyzesuqu.Tybabukyr;
   import tulunyno.Hugyqufyq;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import movimet.Lufub;
   import flash.display.Bitmap;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.Timer;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import nec.Nara;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import com.company.util.Tizulo;
   import com.company.util.MoreColorUtil;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.filters.DropShadowFilter;
   import flash.display.DisplayObject;


   public class Kigokoci extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kigokoci(param1:Array, param2:int) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:BitmapData = null;
         this.fylus=new GraphicsSolidFill(5526612,1);
         this.kivygo=new GraphicsSolidFill(4078909,1);
         this.magup=new GraphicsSolidFill(2368034,1);
         this.kyw=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.jihyles=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.fylus;
         new Vector.<IGraphicsData>(3)[1]=this.kyw;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         this.kalojyn=new Vector.<IGraphicsData>(3);
         new Vector.<IGraphicsData>(3)[0]=this.kivygo;
         new Vector.<IGraphicsData>(3)[1]=this.kyw;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         this.quzize=new Vector.<IGraphicsData>(3);
         new Vector.<IGraphicsData>(3)[0]=this.magup;
         new Vector.<IGraphicsData>(3)[1]=this.jihyles;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         this.ludiseky=new Vector.<IGraphicsData>(3);
         super();
         mouseChildren=false;
         this.position=param2;
         this.fyfydejigi=new ColorMatrixFilter(MoreColorUtil.lyheq);
         _loc3_=AssetLibrary.jeqycu("lofiObj3",225);
         _loc3_=TextureRedrawer.redraw(_loc3_,30,false,0,0);
         this.text=new Lufub().setSize(13).setColor(16777215).setTextWidth(jyjimi).setTextHeight(nymi);
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.text.y=4;
         this.cowowu=new Bitmap(_loc3_);
         this.cowowu.x=52;
         this.cowowu.y=-6;
         this.cowowu.visible=false;
         this.bg=new Sprite();
         Tizulo.vomynaqu(this.kyw);
         Tizulo.woforyzib(0,0,jyjimi,nymi,4,param1,this.kyw);
         Tizulo.woforyzib(2,2,jyjimi-vonirivup,nymi-vonirivup,4,param1,this.jihyles);
         this.bg.graphics.drawGraphicsData(this.quzize);
         this.bg.graphics.drawGraphicsData(this.ludiseky);
         addChild(this.bg);
         addChild(this.cowowu);
         addChild(this.text);
         this.camebe=new Sprite();
         this.buvew=new Timer(kikadyze,1);
         this.buvew.addEventListener(TimerEvent.TIMER_COMPLETE,this.fyhaf);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.nep=new Tybabukyr(this,MouseEvent.CLICK,MouseEvent);
         this.makyd=new Hugyqufyq();
         this.fugelow=new Hugyqufyq(DisplayObject);
         return;
      }

      public static var jyjimi:int = 84;

      private static var nymi:int = 24;

      private static var vonirivup:int = 4;

      private static var subohet:int = 13;

      private static var redurunur:int = -6;

      private static const kikadyze:uint = 250;

      private static const cigim:int = 3;

      public var position:int;

      public var objectType:int;

      public var nep:Tybabukyr;

      public var makyd:Hugyqufyq;

      public var fugelow:Hugyqufyq;

      private var fylus:GraphicsSolidFill;

      private var kivygo:GraphicsSolidFill;

      private var magup:GraphicsSolidFill;

      private var kyw:GraphicsPath;

      private var jihyles:GraphicsPath;

      private var kalojyn:Vector.<IGraphicsData>;

      private var quzize:Vector.<IGraphicsData>;

      private var ludiseky:Vector.<IGraphicsData>;

      private var text:Lufub;

      private var cowowu:Bitmap;

      private var camebe:Sprite;

      private var mupu:Bitmap;

      private var bg:Sprite;

      private var fyfydejigi:ColorMatrixFilter;

      private var available:Boolean = false;

      private var buvew:Timer;

      private var cujucaquq:Point;

      private var zid:Boolean;

      private var qifyni:Boolean;

      public function jaribosod(param1:int, param2:int, param3:Boolean, param4:int=-1) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Bitmap = null;
         if(param4!=-1)
         {
            this.objectType=param4;
            if(this.mupu!=null)
            {
               removeChild(this.mupu);
            }
            _loc7_=ObjectLibrary.getRedrawnTextureFromType(param4,55,false);
            this.mupu=new Bitmap(_loc7_);
            this.mupu.y=-11;
            addChild(this.mupu);
            _loc7_=ObjectLibrary.getRedrawnTextureFromType(param4,80,true);
            _loc8_=new Bitmap(_loc7_);
            _loc8_.x=_loc8_.x-30;
            _loc8_.y=_loc8_.y-30;
            this.camebe.addChild(_loc8_);
         }
         this.available=param3;
         filters=param3?[]:[this.fyfydejigi];
         var _loc5_:* = param1>0;
         if(_loc5_)
         {
            this.lezib(String(param1));
            _loc6_=subohet;
            this.bg.graphics.clear();
            this.bg.graphics.drawGraphicsData(this.kalojyn);
            this.text.x=jyjimi/2+5;
         }
         else
         {
            this.lezib(String(param2));
            _loc6_=redurunur;
            this.bg.graphics.clear();
            this.bg.graphics.drawGraphicsData(this.quzize);
            this.bg.graphics.drawGraphicsData(this.ludiseky);
            this.text.x=this.cowowu.x-this.text.width+6;
         }
         if(this.mupu)
         {
            this.mupu.x=_loc6_;
         }
         this.cowowu.visible=!_loc5_;
         return;
      }

      public function lezib(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text.setStringBuilder(new Nara(param1));
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vupy(false);
         return;
      }

      private function gomivy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.qifyni)
         {
            return;
         }
         if(param1.shiftKey)
         {
            this.vupy(false);
            this.makyd.dispatch();
         }
         else
         {
            if(!this.zid)
            {
               this.vupy(true);
            }
            else
            {
               this.vupy(false);
               this.makyd.dispatch();
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.cowowu.visible)
         {
            this.ponuk(param1);
         }
         return;
      }

      private function vupy(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zid=param1;
         if(this.zid)
         {
            this.buvew.reset();
            this.buvew.start();
         }
         else
         {
            this.buvew.stop();
         }
         return;
      }

      private function ponuk(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cujucaquq=new Point(param1.stageX,param1.stageY);
         addEventListener(MouseEvent.MOUSE_MOVE,this.cutyj);
         addEventListener(MouseEvent.MOUSE_OUT,this.laqa);
         addEventListener(MouseEvent.MOUSE_UP,this.laqa);
         return;
      }

      private function laqa(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(MouseEvent.MOUSE_MOVE,this.cutyj);
         removeEventListener(MouseEvent.MOUSE_OUT,this.laqa);
         removeEventListener(MouseEvent.MOUSE_UP,this.laqa);
         return;
      }

      private function cutyj(param1:MouseEvent) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Number = param1.stageX-this.cujucaquq.x;
         var _loc3_:Number = param1.stageY-this.cujucaquq.y;
         var _loc4_:Number = Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
         if(_loc4_>cigim)
         {
            this.laqa(null);
            this.vupy(false);
            this.mymogo();
         }
         return;
      }

      private function fyhaf(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vupy(false);
         return;
      }

      private function mymogo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qifyni=true;
         this.camebe.startDrag(true);
         stage.addChild(this.camebe);
         this.camebe.addEventListener(MouseEvent.MOUSE_UP,this.tahij);
         return;
      }

      private function tahij(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qifyni=false;
         this.camebe.stopDrag();
         this.camebe.x=this.cujucaquq.x;
         this.camebe.y=this.cujucaquq.y;
         stage.removeChild(this.camebe);
         this.camebe.removeEventListener(MouseEvent.MOUSE_UP,this.tahij);
         this.fugelow.dispatch(this.camebe.dropTarget);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vupy(false);
         this.laqa(null);
         if(this.qifyni)
         {
            this.camebe.stopDrag();
         }
         return;
      }
   }

}