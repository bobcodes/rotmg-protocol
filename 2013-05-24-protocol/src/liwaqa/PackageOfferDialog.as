package liwaqa
{
   import flash.display.Sprite;
   import kimejakim.Tijuj;
   import tulunyno.Hugyqufyq;
   import sasigeka.Foga;
   import flash.display.DisplayObject;
   import movimet.Lufub;
   import damul.Qyfa;
   import flash.geom.Rectangle;
   import coh.Riqi;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import flash.events.IOErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   import nec.Nara;
   import sasigeka.Jujam;


   public class PackageOfferDialog extends Sprite implements Tijuj
   {
      public function PackageOfferDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ready=new Hugyqufyq();
         this.buy=new Hugyqufyq();
         this.close=new Hugyqufyq();
         this.loader=new Jujam();
         this.cobyvipom=new Hedo();
         this.fyn=new Rectangle();
         super();
         return;
      }

      public var ready:Hugyqufyq;

      public var buy:Hugyqufyq;

      public var close:Hugyqufyq;

      var loader:Foga;

      var cobyvipom:Hedo;

      var image:DisplayObject;

      const mawutup:Number = 6;

      const wijuf:Number = 6;

      const wug:Number = 16;

      const fontSize:int = 27;

      private const poh:DisplayObject = this.voc();

      private const buyNow:Sprite = this.bazyqalac();

      private const title:Lufub = this.ladifol();

      private const pisykyr:Sprite = this.nagelywig();

      private var vifa:Qyfa;

      private var fyn:Rectangle;

      private function voc() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:DisplayObject = new Cyti();
         addChild(_loc1_);
         return _loc1_;
      }

      private function nagelywig() : Sprite {
         return new Riqi();
      }

      private function bazyqalac() : Dogyqijec {
         var _loc1_:Dogyqijec = new Dogyqijec(16,I18nKeys.zefezav);
         return _loc1_;
      }

      private function ladifol() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = new Lufub().setSize(this.fontSize).setColor(11776947);
         _loc1_.y=this.mawutup+5;
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         return _loc1_;
      }

      public function setPackage(param1:Qyfa) : PackageOfferDialog {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.poh);
         this.vifa=param1;
         this.kupodyt(this.vifa.cewywume);
         return this;
      }

      public function gynalek() : Qyfa {
         return this.vifa;
      }

      private function gomivy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pisykyr.removeEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         this.close.dispatch();
         return;
      }

      private function kupodyt(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         this.removeListeners();
         this.zudaqut(new Ketag());
         this.ready.dispatch();
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.removeListeners();
         this.zudaqut(this.loader);
         this.ready.dispatch();
         return;
      }

      private function zudaqut(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setImage(param1);
         addChild(this.title);
         this.myzuduca();
         this.rajukyb();
         this.fut();
         this.setTitle(this.vifa.name);
         this.noqubosyp(this.vifa.price);
         return;
      }

      private function removeListeners() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         return;
      }

      private function fut() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cobyvipom.init();
         addChild(this.cobyvipom);
         this.cobyvipom.x=this.buyNow.x-16;
         this.cobyvipom.y=this.buyNow.y+this.buyNow.height/2;
         return;
      }

      private function rajukyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.buyNow);
         this.buyNow.x=this.image.width/2-this.buyNow.width/2;
         this.buyNow.y=this.image.height-this.buyNow.height-this.wug-4;
         this.buyNow.addEventListener(MouseEvent.MOUSE_UP,this.tyzukid);
         return;
      }

      private function tyzukid(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.buyNow.removeEventListener(MouseEvent.MOUSE_UP,this.tyzukid);
         this.buy.dispatch();
         return;
      }

      private function myzuduca() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.pisykyr);
         this.pisykyr.x=this.image.width-this.pisykyr.width*2-this.wijuf;
         this.pisykyr.y=this.mawutup+5;
         this.pisykyr.addEventListener(MouseEvent.MOUSE_UP,this.gomivy);
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
         x=(this.fyn.width-width)/2;
         y=(this.fyn.height-height)/2;
         return;
      }

      private function setTitle(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.title.setStringBuilder(new Nara(param1));
         this.title.x=this.image.width/2;
         return;
      }

      private function noqubosyp(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cobyvipom.noqubosyp(param1);
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fyn=param1;
         this.center();
         return;
      }
   }

}