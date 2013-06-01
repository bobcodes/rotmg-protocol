package golac
{
[CLASS182]   import flash.display.Sprite;
   import dob.Beqoq;
   import tinava.Dab;
   import cidas.Hyruqo;
   import flash.display.DisplayObject;
   import pudev.Capitu;
   import kuniv.Nogofado;
   import flash.geom.Rectangle;
   import fyvanod.Jasuhoco;
   import com.company.assembleegameclient.ui.Cid;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import flash.events.IOErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   import totuhare.Javo;
   import cidas.Furydypys;


   public class PackageOfferDialog extends Sprite implements Beqoq
   {
      public function PackageOfferDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ready=new Dab();
         this.buy=new Dab();
         this.close=new Dab();
         this.loader=new Furydypys();
         this.deqiminyf=new Cejewo();
         this.keje=new Rectangle();
         super();
         return;
      }

      public var ready:Dab;

      public var buy:Dab;

      public var close:Dab;

      var loader:Hyruqo;

      var deqiminyf:Cejewo;

      var image:DisplayObject;

      const gofulul:Number = 6;

      const sukikogin:Number = 6;

      const nyhire:Number = 16;

      const fontSize:int = 27;

      private const havi:DisplayObject = this.nunyryrys();

      private const buyNow:Sprite = this.subez();

      private const title:Capitu = this.jewyry();

      private const giqezi:Sprite = this.rafyte();

      private var batyzoqu:Nogofado;

      private var keje:Rectangle;

      private function nunyryrys() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:DisplayObject = new Kinaqu();
         addChild(_loc1_);
         return _loc1_;
      }

      private function rafyte() : Sprite {
         return new Jasuhoco();
      }

      private function subez() : Cid {
         var _loc1_:Cid = new Cid(16,Kefyfa.hok);
         return _loc1_;
      }

      private function jewyry() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu().setSize(this.fontSize).setColor(11776947);
         _loc1_.y=this.gofulul+5;
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         return _loc1_;
      }

      public function setPackage(param1:Nogofado) : PackageOfferDialog {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeChild(this.havi);
         this.batyzoqu=param1;
         this.dic(this.batyzoqu.maruwab);
         return this;
      }

      public function tumadyw() : Nogofado {
         return this.batyzoqu;
      }

      private function jefazus(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.giqezi.removeEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         this.close.dispatch();
         return;
      }

      private function dic(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.loader.load(new URLRequest(param1));
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loader.unload();
         return;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tamugucal();
         this.lagil(new Syc());
         this.ready.dispatch();
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tamugucal();
         this.lagil(this.loader);
         this.ready.dispatch();
         return;
      }

      private function lagil(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.setImage(param1);
         addChild(this.title);
         this.hah();
         this.bav();
         this.mavykeh();
         this.setTitle(this.batyzoqu.name);
         this.bego(this.batyzoqu.price);
         return;
      }

      private function tamugucal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         return;
      }

      private function mavykeh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.deqiminyf.init();
         addChild(this.deqiminyf);
         this.deqiminyf.x=this.buyNow.x-16;
         this.deqiminyf.y=this.buyNow.y+this.buyNow.height/2;
         return;
      }

      private function bav() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.buyNow);
         this.buyNow.x=this.image.width/2-this.buyNow.width/2;
         this.buyNow.y=this.image.height-this.buyNow.height-this.nyhire-4;
         this.buyNow.addEventListener(MouseEvent.MOUSE_UP,this.wiwiloquv);
         return;
      }

      private function wiwiloquv(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.buyNow.removeEventListener(MouseEvent.MOUSE_UP,this.wiwiloquv);
         this.buy.dispatch();
         return;
      }

      private function hah() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.giqezi);
         this.giqezi.x=this.image.width-this.giqezi.width*2-this.sukikogin;
         this.giqezi.y=this.gofulul+5;
         this.giqezi.addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         return;
      }

      private function setImage(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.image=param1;
         this.center();
         return;
      }

      private function center() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         x=(this.keje.width-width)/2;
         y=(this.keje.height-height)/2;
         return;
      }

      private function setTitle(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.title.setStringBuilder(new Javo(param1));
         this.title.x=this.image.width/2;
         return;
      }

      private function bego(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.deqiminyf.bego(param1);
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.keje=param1;
         this.center();
         return;
      }
   }
[/CLASS]
}