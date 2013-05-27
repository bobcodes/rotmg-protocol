package sakugyt
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import difu.Necof;
   import flash.filters.DropShadowFilter;
   import hotewa.Baqifa;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Rucoted;
   import biqacufo.Kofapije;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Tira;
   import liwaqa.PackageButton;
   import vahejo.Muhado;
   import wiqeqed.Tycofeq;
   import flash.events.Event;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import nec.Nara;
   import flash.geom.Rectangle;
   import flash.display.DisplayObject;
   import ruwysepyd.Vedoqawe;
   import vahejo.Tetywybil;


   public class CharacterSelectionAndNewsScreen extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterSelectionAndNewsScreen() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.newCharacter=new Hugyqufyq();
         this.chooseName=new Hugyqufyq();
         this.luribodi=new Hugyqufyq();
         this.winoces=Vedoqawe.tisujyhav();
         this.sawinyw=Vedoqawe.qypuzejuz();
         this.vype=Vedoqawe.teworofuc();
         super();
         this.close=this.vype.siperu;
         this.nud=this.sawinyw.siperu;
         addChild(new Tetywybil());
         addChild(new Mecunenim());
         return;
      }

      private static const gibifu:int = 475;

      public var close:Hugyqufyq;

      public var nud:Hugyqufyq;

      public var newCharacter:Hugyqufyq;

      public var chooseName:Hugyqufyq;

      public var luribodi:Hugyqufyq;

      public var tily:Necof;

      private const ducyle:Number = 400;

      private const kyq:int = 108;

      private const hezafag:int = 18;

      private const gidozepi:DropShadowFilter = new DropShadowFilter(0,0,0,1,8,8);

      private var model:Baqifa;

      private var gazih:Boolean;

      private var vuzet:Lufub;

      private var qagyvapel:Rucoted;

      private var waza:Kofapije;

      private var cazy:Lufub;

      private var gyqybaris:Lufub;

      private var vawy:Sukeh;

      private var baguryvew:Number;

      private var ruqos:Shape;

      private var dafuty:Tira;

      private var vakyr:PackageButton;

      private var winoces:Tiqigawul;

      private var sawinyw:Tiqigawul;

      private var vype:Tiqigawul;

      private var zanoh:Muhado;

      public function initialize(param1:Baqifa) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.gazih)
         {
            return;
         }
         this.gazih=true;
         this.model=param1;
         this.zabegyvu(param1);
         return;
      }

      private function zabegyvu(param1:Baqifa) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.famyzehik();
         this.wojym();
         this.rajabopu();
         this.joje();
         this.japegeqom();
         this.vyw();
         this.vaguca();
         this.gewomu();
         if(this.baguryvew>this.ducyle)
         {
            this.pogyg();
         }
         if(!param1.bohuv())
         {
            this.zytyfam();
         }
         return;
      }

      private function gewomu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.winoces.siperu.add(this.namusejyk);
         this.zanoh=new Muhado();
         this.zanoh.ryquwocy(this.winoces,Muhado.CENTER);
         this.zanoh.ryquwocy(this.vype,Muhado.LEFT);
         this.zanoh.ryquwocy(this.sawinyw,Muhado.RIGHT);
         addChild(this.zanoh);
         return;
      }

      private function japegeqom() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tycofeq = null;
         _loc1_=new Tycofeq();
         _loc1_.x=gibifu;
         _loc1_.y=112;
         addChild(_loc1_);
         return;
      }

      private function pogyg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dafuty=new Tira(16,399);
         this.dafuty.x=443;
         this.dafuty.y=113;
         this.dafuty.jyqecubi(399,this.vawy.height);
         this.dafuty.addEventListener(Event.CHANGE,this.qugar);
         addChild(this.dafuty);
         return;
      }

      private function vaguca() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vawy=new Sukeh(this.model);
         this.vawy.x=this.hezafag;
         this.vawy.y=this.kyq;
         this.baguryvew=this.vawy.height;
         addChild(this.vawy);
         return;
      }

      private function joje() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gyqybaris=new Lufub().setSize(18).setColor(11776947);
         this.gyqybaris.setBold(true);
         this.gyqybaris.setStringBuilder(new Sire().setParams(I18nKeys.jopezolan));
         this.gyqybaris.filters=[this.gidozepi];
         this.gyqybaris.x=gibifu;
         this.gyqybaris.y=79;
         addChild(this.gyqybaris);
         return;
      }

      private function rajabopu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cazy=new Lufub().setSize(18).setColor(11776947);
         this.cazy.setBold(true);
         this.cazy.setStringBuilder(new Sire().setParams(I18nKeys.hacuziqih));
         this.cazy.filters=[this.gidozepi];
         this.cazy.x=this.hezafag;
         this.cazy.y=79;
         addChild(this.cazy);
         return;
      }

      private function wojym() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.waza=new Kofapije();
         this.waza.draw(this.model.cuvo(),this.model.cof());
         this.waza.x=this.wedi().width;
         this.waza.y=20;
         addChild(this.waza);
         return;
      }

      private function zytyfam() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qagyvapel=new Rucoted(16,false,I18nKeys.qacuqotu);
         this.qagyvapel.y=50;
         this.qagyvapel.setAutoSize(TextFieldAutoSize.CENTER);
         this.qagyvapel.x=this.wedi().width/2;
         this.qagyvapel.addEventListener(MouseEvent.CLICK,this.safekuq);
         addChild(this.qagyvapel);
         return;
      }

      private function famyzehik() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vuzet=new Lufub().setSize(22).setColor(11776947);
         this.vuzet.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.vuzet.setStringBuilder(new Nara(this.model.getName()));
         this.vuzet.filters=[this.gidozepi];
         this.vuzet.y=24;
         this.vuzet.x=(this.wedi().width-this.vuzet.width)/2;
         addChild(this.vuzet);
         return;
      }

      function wedi() : Rectangle {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Rectangle = new Rectangle();
         if(stage)
         {
            _loc1_=new Rectangle(0,0,stage.stageWidth,stage.stageHeight);
         }
         return _loc1_;
      }

      private var myfumyr:int = 106;

      private function vyw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ruqos=new Shape();
         this.ruqos.graphics.clear();
         this.ruqos.graphics.lineStyle(2,5526612);
         this.ruqos.graphics.moveTo(0,this.myfumyr);
         this.ruqos.graphics.lineTo(this.wedi().width,this.myfumyr);
         this.ruqos.graphics.moveTo(466,107);
         this.ruqos.graphics.lineTo(466,526);
         this.ruqos.graphics.lineStyle();
         addChild(this.ruqos);
         return;
      }

      private function safekuq(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.chooseName.dispatch();
         return;
      }

      private function qugar(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vawy.ricos(-this.dafuty.cimubito()*(this.baguryvew-400));
         return;
      }

      public function pyqe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tily=new Necof();
         this.tily.x=14;
         this.tily.y=40;
         addChild(this.tily);
         this.vakydopyt(this.vakyr);
         return;
      }

      public function lucypufah() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vakyr=new PackageButton();
         this.vakyr.init();
         this.vakyr.x=6;
         this.vakyr.y=40;
         addChild(this.vakyr);
         this.vakydopyt(this.tily);
         return;
      }

      private function vakydopyt(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((param1)&&(contains(param1)))
         {
            removeChild(param1);
         }
         return;
      }

      private function namusejyk() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.zimatuhur()==0)
         {
            this.newCharacter.dispatch();
         }
         else
         {
            this.luribodi.dispatch();
         }
         return;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vuzet.setStringBuilder(new Nara(this.model.getName()));
         this.vuzet.x=(this.wedi().width-this.vuzet.width)*0.5;
         if(this.qagyvapel)
         {
            removeChild(this.qagyvapel);
            this.qagyvapel=null;
         }
         return;
      }
   }

}