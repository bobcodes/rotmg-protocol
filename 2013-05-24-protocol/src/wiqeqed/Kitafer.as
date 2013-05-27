package wiqeqed
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import movimet.Lufub;
   import lijite.Nyzena;
   import flash.display.Loader;
   import tulunyno.Hugyqufyq;
   import kyco.Nun;
   import flash.events.MouseEvent;
   import movimet.Zisa;
   import flash.text.TextFieldAutoSize;
   import nec.Nara;
   import flash.filters.DropShadowFilter;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import jag.Giq;


   public class Kitafer extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kitafer(param1:Number, param2:Number) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pezebo=new Hugyqufyq(Nyzena);
         super();
         this.cemohoqal=Giq.kid();
         this.setSize(param1,param2);
         this.sos();
         this.hici();
         this.vusi();
         return;
      }

      static var vigo:Class = Boda;

      static var padugif:Class = Zygyc;

      private static const nuja:uint = 30;

      private static const LARGE:String = "LARGE";

      private static const SMALL:String = "SMALL";

      private var hal:Sprite;

      private var dab:Shape;

      private var mubyba:Shape;

      private var fuhobi:Lufub;

      private var size:String;

      private var w:Number;

      private var h:Number;

      private var kucurasyb:Nyzena;

      private var _loader:Loader;

      private var ledijiv:uint = 18;

      public var pezebo:Hugyqufyq;

      private var cemohoqal:Nun;

      private function setSize(param1:Number, param2:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
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

      public function init(param1:Nyzena) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kucurasyb=param1;
         this.buby();
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         buttonMode=true;
         return;
      }

      private function fejazery() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(this.dab=new Shape());
         addChild(this.mubyba=new Shape());
         return;
      }

      private function sos() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hal=new Sprite();
         addChild(this.hal);
         return;
      }

      private function hici() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dab=new Shape();
         this.dab.graphics.beginFill(16711935);
         this.dab.graphics.drawRect(0,0,this.w,this.h);
         this.hal.mask=this.dab;
         addChild(this.dab);
         return;
      }

      private function vusi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mubyba=new Shape();
         this.mubyba.graphics.beginFill(0,0.8);
         this.mubyba.graphics.drawRect(0,this.h-nuja,this.w,nuja);
         addChild(this.mubyba);
         return;
      }

      private function buby() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fuhobi=this.cemohoqal.getInstance(Zisa).setSize(this.ledijiv).setColor(16777215);
         addChild(this.fuhobi);
         this.fuhobi.setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         this.fuhobi.setStringBuilder(new Nara(this.kucurasyb.jeki));
         this.zure();
         this.fuhobi.x=this.w/2;
         this.fuhobi.y=this.h-25/2;
         this.fuhobi.filters=[new DropShadowFilter(0,0,0)];
         return;
      }

      private function zure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.fuhobi.width>this.w-10)
         {
            this.ledijiv=this.ledijiv-2;
            this.fuhobi.setSize(this.ledijiv).setColor(16777215);
            this.zure();
         }
         return;
      }

      public function load() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this._loader=new Loader();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this._loader.load(new URLRequest(this.kucurasyb.cewywume));
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hal.addChild(this._loader);
         return;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(this.size)
         {
            case LARGE:
               this.hal.addChild(new vigo());
               break;
            case SMALL:
               this.hal.addChild(new padugif());
               break;
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pezebo.dispatch(this.kucurasyb);
         return;
      }
   }

}