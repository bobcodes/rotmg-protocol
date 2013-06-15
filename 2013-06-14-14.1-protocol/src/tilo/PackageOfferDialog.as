package tilo
{
   import flash.display.Sprite;
   import foqudowem.Hedubavyl;
   import mukyrosu.Qanyduk;
   import ren.Bipes;
   import flash.display.DisplayObject;
   import hivysif.Guzowoja;
   import wavybyjec.Sucy;
   import flash.geom.Rectangle;
   import haj.Hiquhifu;
   import com.company.assembleegameclient.ui.Tivinu;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import flash.events.IOErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   import jediwip.Vofezuzy;
   import ren.Gerybobu;


   public class PackageOfferDialog extends Sprite implements Hedubavyl
   {
      public function PackageOfferDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ready=new Qanyduk();
         this.buy=new Qanyduk();
         this.close=new Qanyduk();
         this.loader=new Gerybobu();
         this.daqase=new Jyfone();
         this.rybuwy=new Rectangle();
         super();
         return;
      }

      public var ready:Qanyduk;

      public var buy:Qanyduk;

      public var close:Qanyduk;

      var loader:Bipes;

      var daqase:Jyfone;

      var image:DisplayObject;

      const hafiripu:Number = 6;

      const gufuno:Number = 6;

      const vew:Number = 16;

      const fontSize:int = 27;

      private const qaha:DisplayObject = this.cel();

      private const buyNow:Sprite = this.qacu();

      private const title:Guzowoja = this.haq();

      private const gopubotag:Sprite = this.dozal();

      private var jefitizij:Sucy;

      private var rybuwy:Rectangle;

      private function cel() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:DisplayObject = new Tun();
         addChild(_loc1_);
         return _loc1_;
      }

      private function dozal() : Sprite {
         return new Hiquhifu();
      }

      private function qacu() : Tivinu {
         var _loc1_:Tivinu = new Tivinu(16,Vibemod.qonyguqal);
         return _loc1_;
      }

      private function haq() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja().setSize(this.fontSize).setColor(11776947);
         _loc1_.y=this.hafiripu+5;
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         return _loc1_;
      }

      public function setPackage(param1:Sucy) : PackageOfferDialog {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.qaha);
         this.jefitizij=param1;
         this.tuzyqij(this.jefitizij.wipud);
         return this;
      }

      public function zylis() : Sucy {
         return this.jefitizij;
      }

      private function honoraj(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gopubotag.removeEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         this.close.dispatch();
         return;
      }

      private function tuzyqij(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.loader.load(new URLRequest(param1));
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.loader.unload();
         return;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mykadezyn();
         this.sosygon(new Jet());
         this.ready.dispatch();
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mykadezyn();
         this.sosygon(this.loader);
         this.ready.dispatch();
         return;
      }

      private function sosygon(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setImage(param1);
         addChild(this.title);
         this.fami();
         this.nijufubin();
         this.vyz();
         this.setTitle(this.jefitizij.name);
         this.zovisa(this.jefitizij.price);
         return;
      }

      private function mykadezyn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         return;
      }

      private function vyz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.daqase.init();
         addChild(this.daqase);
         this.daqase.x=this.buyNow.x-16;
         this.daqase.y=this.buyNow.y+this.buyNow.height/2;
         return;
      }

      private function nijufubin() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.buyNow);
         this.buyNow.x=this.image.width/2-this.buyNow.width/2;
         this.buyNow.y=this.image.height-this.buyNow.height-this.vew-4;
         this.buyNow.addEventListener(MouseEvent.MOUSE_UP,this.qovokyj);
         return;
      }

      private function qovokyj(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.buyNow.removeEventListener(MouseEvent.MOUSE_UP,this.qovokyj);
         this.buy.dispatch();
         return;
      }

      private function fami() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.gopubotag);
         this.gopubotag.x=this.image.width-this.gopubotag.width*2-this.gufuno;
         this.gopubotag.y=this.hafiripu+5;
         this.gopubotag.addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         return;
      }

      private function setImage(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.image=param1;
         this.center();
         return;
      }

      private function center() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         x=(this.rybuwy.width-width)/2;
         y=(this.rybuwy.height-height)/2;
         return;
      }

      private function setTitle(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.title.setStringBuilder(new Vofezuzy(param1));
         this.title.x=this.image.width/2;
         return;
      }

      private function zovisa(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.daqase.zovisa(param1);
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rybuwy=param1;
         this.center();
         return;
      }
   }

}