package rymuhuduh
{
[CLASS496]   import flash.display.Sprite;
   import zehus.Caje;
   import tinava.Dab;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import pudev.Capitu;
   import flash.display.Bitmap;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.Timer;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import totuhare.Javo;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import com.company.util.Nosupygu;
   import com.company.util.MoreColorUtil;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.filters.DropShadowFilter;
   import flash.display.DisplayObject;


   public class Beqalag extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Beqalag(param1:Array, param2:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:BitmapData = null;
         this.joqav=new GraphicsSolidFill(5526612,1);
         this.kecucif=new GraphicsSolidFill(4078909,1);
         this.negiqeqy=new GraphicsSolidFill(2368034,1);
         this.vicocov=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.rycacakiq=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.joqav;
         new Vector.<IGraphicsData>(3)[1]=this.vicocov;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         this.myveg=new Vector.<IGraphicsData>(3);
         new Vector.<IGraphicsData>(3)[0]=this.kecucif;
         new Vector.<IGraphicsData>(3)[1]=this.vicocov;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         this.wowuwaf=new Vector.<IGraphicsData>(3);
         new Vector.<IGraphicsData>(3)[0]=this.negiqeqy;
         new Vector.<IGraphicsData>(3)[1]=this.rycacakiq;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         this.vuw=new Vector.<IGraphicsData>(3);
         super();
         mouseChildren=false;
         this.position=param2;
         this.rudawi=new ColorMatrixFilter(MoreColorUtil.calysymes);
         _loc3_=AssetLibrary.zovy("lofiObj3",225);
         _loc3_=TextureRedrawer.redraw(_loc3_,30,false,0,0);
         this.text=new Capitu().setSize(13).setColor(16777215).setTextWidth(fob).setTextHeight(hewyh);
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.text.y=4;
         this.wyluketo=new Bitmap(_loc3_);
         this.wyluketo.x=52;
         this.wyluketo.y=-6;
         this.wyluketo.visible=false;
         this.bg=new Sprite();
         Nosupygu.jyrodepu(this.vicocov);
         Nosupygu.secebeq(0,0,fob,hewyh,4,param1,this.vicocov);
         Nosupygu.secebeq(2,2,fob-vihyfyp,hewyh-vihyfyp,4,param1,this.rycacakiq);
         this.bg.graphics.drawGraphicsData(this.wowuwaf);
         this.bg.graphics.drawGraphicsData(this.vuw);
         addChild(this.bg);
         addChild(this.wyluketo);
         addChild(this.text);
         this.bur=new Sprite();
         this.setowybuz=new Timer(togyzoda,1);
         this.setowybuz.addEventListener(TimerEvent.TIMER_COMPLETE,this.nulyty);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.dice=new Caje(this,MouseEvent.CLICK,MouseEvent);
         this.boqatocab=new Dab();
         this.fanytisyt=new Dab(DisplayObject);
         return;
      }

      public static var fob:int = 84;

      private static var hewyh:int = 24;

      private static var vihyfyp:int = 4;

      private static var ril:int = 13;

      private static var jude:int = -6;

      private static const togyzoda:uint = 250;

      private static const saso:int = 3;

      public var position:int;

      public var objectType:int;

      public var dice:Caje;

      public var boqatocab:Dab;

      public var fanytisyt:Dab;

      private var joqav:GraphicsSolidFill;

      private var kecucif:GraphicsSolidFill;

      private var negiqeqy:GraphicsSolidFill;

      private var vicocov:GraphicsPath;

      private var rycacakiq:GraphicsPath;

      private var myveg:Vector.<IGraphicsData>;

      private var wowuwaf:Vector.<IGraphicsData>;

      private var vuw:Vector.<IGraphicsData>;

      private var text:Capitu;

      private var wyluketo:Bitmap;

      private var bur:Sprite;

      private var bak:Bitmap;

      private var bg:Sprite;

      private var rudawi:ColorMatrixFilter;

      private var available:Boolean = false;

      private var setowybuz:Timer;

      private var kyqaseha:Point;

      private var cufis:Boolean;

      private var jysatil:Boolean;

      public function polaget(param1:int, param2:int, param3:Boolean, param4:int=-1) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Bitmap = null;
         if(param4!=-1)
         {
            this.objectType=param4;
            if(this.bak!=null)
            {
               removeChild(this.bak);
            }
            _loc7_=ObjectLibrary.getRedrawnTextureFromType(param4,55,false);
            this.bak=new Bitmap(_loc7_);
            this.bak.y=-11;
            addChild(this.bak);
            _loc7_=ObjectLibrary.getRedrawnTextureFromType(param4,80,true);
            _loc8_=new Bitmap(_loc7_);
            _loc8_.x=_loc8_.x-30;
            _loc8_.y=_loc8_.y-30;
            this.bur.addChild(_loc8_);
         }
         this.available=param3;
         filters=param3?[]:[this.rudawi];
         var _loc5_:* = param1>0;
         if(_loc5_)
         {
            this.satat(String(param1));
            _loc6_=ril;
            this.bg.graphics.clear();
            this.bg.graphics.drawGraphicsData(this.myveg);
            this.text.x=fob/2+5;
         }
         else
         {
            this.satat(String(param2));
            _loc6_=jude;
            this.bg.graphics.clear();
            this.bg.graphics.drawGraphicsData(this.wowuwaf);
            this.bg.graphics.drawGraphicsData(this.vuw);
            this.text.x=this.wyluketo.x-this.text.width+6;
         }
         if(this.bak)
         {
            this.bak.x=_loc6_;
         }
         this.wyluketo.visible=!_loc5_;
         return;
      }

      public function satat(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text.setStringBuilder(new Javo(param1));
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.magucali(false);
         return;
      }

      private function jefazus(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.jysatil)
         {
            return;
         }
         if(param1.shiftKey)
         {
            this.magucali(false);
            this.boqatocab.dispatch();
         }
         else
         {
            if(!this.cufis)
            {
               this.magucali(true);
            }
            else
            {
               this.magucali(false);
               this.boqatocab.dispatch();
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.wyluketo.visible)
         {
            this.coda(param1);
         }
         return;
      }

      private function magucali(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cufis=param1;
         if(this.cufis)
         {
            this.setowybuz.reset();
            this.setowybuz.start();
         }
         else
         {
            this.setowybuz.stop();
         }
         return;
      }

      private function coda(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kyqaseha=new Point(param1.stageX,param1.stageY);
         addEventListener(MouseEvent.MOUSE_MOVE,this.pipiv);
         addEventListener(MouseEvent.MOUSE_OUT,this.wigocojyd);
         addEventListener(MouseEvent.MOUSE_UP,this.wigocojyd);
         return;
      }

      private function wigocojyd(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(MouseEvent.MOUSE_MOVE,this.pipiv);
         removeEventListener(MouseEvent.MOUSE_OUT,this.wigocojyd);
         removeEventListener(MouseEvent.MOUSE_UP,this.wigocojyd);
         return;
      }

      private function pipiv(param1:MouseEvent) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Number = param1.stageX-this.kyqaseha.x;
         var _loc3_:Number = param1.stageY-this.kyqaseha.y;
         var _loc4_:Number = Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
         if(_loc4_>saso)
         {
            this.wigocojyd(null);
            this.magucali(false);
            this.rozehuc();
         }
         return;
      }

      private function nulyty(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.magucali(false);
         return;
      }

      private function rozehuc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jysatil=true;
         this.bur.startDrag(true);
         stage.addChild(this.bur);
         this.bur.addEventListener(MouseEvent.MOUSE_UP,this.kyfav);
         return;
      }

      private function kyfav(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jysatil=false;
         this.bur.stopDrag();
         this.bur.x=this.kyqaseha.x;
         this.bur.y=this.kyqaseha.y;
         stage.removeChild(this.bur);
         this.bur.removeEventListener(MouseEvent.MOUSE_UP,this.kyfav);
         this.fanytisyt.dispatch(this.bur.dropTarget);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.magucali(false);
         this.wigocojyd(null);
         if(this.jysatil)
         {
            this.bur.stopDrag();
         }
         return;
      }
   }
[/CLASS]
}