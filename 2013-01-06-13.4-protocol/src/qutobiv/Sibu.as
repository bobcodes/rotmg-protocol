package qutobiv
{
[CLASS224]   import flash.display.Sprite;
   import flash.display.Shape;
   import pudev.Capitu;
   import gyqadewa.Jycomynig;
   import flash.display.Loader;
   import tinava.Dab;
   import pogefeqeh.Wahovy;
   import flash.events.MouseEvent;
   import pudev.Gypyfimet;
   import flash.text.TextFieldAutoSize;
   import totuhare.Javo;
   import flash.filters.DropShadowFilter;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import jutesesel.Qibigagal;


   public class Sibu extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Sibu(param1:Number, param2:Number) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.civ=new Dab(Jycomynig);
         super();
         this.viqelo=Qibigagal.husuha();
         this.setSize(param1,param2);
         this.segezamig();
         this.gesinuwen();
         this.wusu();
         return;
      }

      static var rufugymi:Class = Hufu;

      static var fuhe:Class = Fipe;

      private static const rero:uint = 30;

      private static const LARGE:String = "LARGE";

      private static const SMALL:String = "SMALL";

      private var firamanow:Sprite;

      private var redujuhy:Shape;

      private var hela:Shape;

      private var tiluvo:Capitu;

      private var size:String;

      private var w:Number;

      private var h:Number;

      private var wyjipu:Jycomynig;

      private var _loader:Loader;

      private var riwibubin:uint = 18;

      public var civ:Dab;

      private var viqelo:Wahovy;

      private function setSize(param1:Number, param2:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.w=param1;
         this.h=param2;
         if(param1==306&&param2==194)
         {
            this.size=LARGE;
         }
         else
         {
            if(param1==151&&param2==189)
            {
               this.size=SMALL;
            }
         }
         return;
      }

      public function init(param1:Jycomynig) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wyjipu=param1;
         this.qiz();
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         buttonMode=true;
         return;
      }

      private function jirul() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(this.redujuhy=new Shape());
         addChild(this.hela=new Shape());
         return;
      }

      private function segezamig() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.firamanow=new Sprite();
         addChild(this.firamanow);
         return;
      }

      private function gesinuwen() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.redujuhy=new Shape();
         this.redujuhy.graphics.beginFill(16711935);
         this.redujuhy.graphics.drawRect(0,0,this.w,this.h);
         this.firamanow.mask=this.redujuhy;
         addChild(this.redujuhy);
         return;
      }

      private function wusu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hela=new Shape();
         this.hela.graphics.beginFill(0,0.8);
         this.hela.graphics.drawRect(0,this.h-rero,this.w,rero);
         addChild(this.hela);
         return;
      }

      private function qiz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tiluvo=this.viqelo.getInstance(Gypyfimet).setSize(this.riwibubin).setColor(16777215);
         addChild(this.tiluvo);
         this.tiluvo.setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         this.tiluvo.setStringBuilder(new Javo(this.wyjipu.celoqiji));
         this.detamirej();
         this.tiluvo.x=this.w/2;
         this.tiluvo.y=this.h-25/2;
         this.tiluvo.filters=[new DropShadowFilter(0,0,0)];
         return;
      }

      private function detamirej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.tiluvo.width>this.w-10)
         {
            this.riwibubin=this.riwibubin-2;
            this.tiluvo.setSize(this.riwibubin).setColor(16777215);
            this.detamirej();
         }
         return;
      }

      public function load() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this._loader=new Loader();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this._loader.load(new URLRequest(this.wyjipu.maruwab));
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.firamanow.addChild(this._loader);
         return;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case LARGE:
               this.firamanow.addChild(new rufugymi());
               break;
            case SMALL:
               this.firamanow.addChild(new fuhe());
               break;
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.civ.dispatch(this.wyjipu);
         return;
      }
   }
[/CLASS]
}