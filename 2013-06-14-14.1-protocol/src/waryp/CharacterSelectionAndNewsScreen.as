package waryp
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import pufelih.Kumamy;
   import flash.filters.DropShadowFilter;
   import lemugo.Wokycuku;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Hiry;
   import kofaz.Rynomyd;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Gequrenaj;
   import tilo.PackageButton;
   import qymoho.Fipil;
   import tisidon.Juv;
   import flash.events.Event;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import jediwip.Vofezuzy;
   import flash.geom.Rectangle;
   import flash.display.DisplayObject;
   import wenono.Jovumuhaq;
   import qymoho.Taziw;


   public class CharacterSelectionAndNewsScreen extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterSelectionAndNewsScreen() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.newCharacter=new Qanyduk();
         this.chooseName=new Qanyduk();
         this.naga=new Qanyduk();
         this.busecew=Jovumuhaq.tawemuj();
         this.biw=Jovumuhaq.womidaty();
         this.fyhy=Jovumuhaq.pequqymo();
         super();
         this.close=this.fyhy.peqe;
         this.tucucu=this.biw.peqe;
         addChild(new Taziw());
         addChild(new Cysaruha());
         return;
      }

      private static const foqulor:int = 475;

      public var close:Qanyduk;

      public var tucucu:Qanyduk;

      public var newCharacter:Qanyduk;

      public var chooseName:Qanyduk;

      public var naga:Qanyduk;

      public var figyqudaq:Kumamy;

      private const jicyqo:Number = 400;

      private const lupebys:int = 108;

      private const depebaba:int = 18;

      private const megero:DropShadowFilter = new DropShadowFilter(0,0,0,1,8,8);

      private var model:Wokycuku;

      private var zilyl:Boolean;

      private var nulopy:Guzowoja;

      private var vyjono:Hiry;

      private var bogerytu:Rynomyd;

      private var jut:Guzowoja;

      private var fugasazy:Guzowoja;

      private var lujy:Cocomim;

      private var rogy:Number;

      private var voci:Shape;

      private var jecilo:Gequrenaj;

      private var gywij:PackageButton;

      private var busecew:Nulejufyl;

      private var biw:Nulejufyl;

      private var fyhy:Nulejufyl;

      private var pyfy:Fipil;

      public function initialize(param1:Wokycuku) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.zilyl)
         {
            return;
         }
         this.zilyl=true;
         this.model=param1;
         this.wuhuhojun(param1);
         return;
      }

      private function wuhuhojun(param1:Wokycuku) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wyjam();
         this.zore();
         this.qirubunac();
         this.gita();
         this.cida();
         this.bucy();
         this.meriwibej();
         this.vojafavyz();
         if(this.rogy>this.jicyqo)
         {
            this.muluh();
         }
         if(!param1.besu())
         {
            this.wukihyhow();
         }
         return;
      }

      private function vojafavyz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.busecew.peqe.add(this.vyditoq);
         this.pyfy=new Fipil();
         this.pyfy.mubob(this.busecew,Fipil.CENTER);
         this.pyfy.mubob(this.fyhy,Fipil.LEFT);
         this.pyfy.mubob(this.biw,Fipil.RIGHT);
         addChild(this.pyfy);
         return;
      }

      private function cida() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Juv = null;
         _loc1_=new Juv();
         _loc1_.x=foqulor;
         _loc1_.y=112;
         addChild(_loc1_);
         return;
      }

      private function muluh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jecilo=new Gequrenaj(16,399);
         this.jecilo.x=443;
         this.jecilo.y=113;
         this.jecilo.vyhojig(399,this.lujy.height);
         this.jecilo.addEventListener(Event.CHANGE,this.qorav);
         addChild(this.jecilo);
         return;
      }

      private function meriwibej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lujy=new Cocomim(this.model);
         this.lujy.x=this.depebaba;
         this.lujy.y=this.lupebys;
         this.rogy=this.lujy.height;
         addChild(this.lujy);
         return;
      }

      private function gita() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fugasazy=new Guzowoja().setSize(18).setColor(11776947);
         this.fugasazy.setBold(true);
         this.fugasazy.setStringBuilder(new Kybidu().setParams(Vibemod.tykevazaw));
         this.fugasazy.filters=[this.megero];
         this.fugasazy.x=foqulor;
         this.fugasazy.y=79;
         addChild(this.fugasazy);
         return;
      }

      private function qirubunac() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jut=new Guzowoja().setSize(18).setColor(11776947);
         this.jut.setBold(true);
         this.jut.setStringBuilder(new Kybidu().setParams(Vibemod.putad));
         this.jut.filters=[this.megero];
         this.jut.x=this.depebaba;
         this.jut.y=79;
         addChild(this.jut);
         return;
      }

      private function zore() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bogerytu=new Rynomyd();
         this.bogerytu.draw(this.model.pucutad(),this.model.wopufud());
         this.bogerytu.x=this.mogyzajo().width;
         this.bogerytu.y=20;
         addChild(this.bogerytu);
         return;
      }

      private function wukihyhow() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vyjono=new Hiry(16,false,Vibemod.tin);
         this.vyjono.y=50;
         this.vyjono.setAutoSize(TextFieldAutoSize.CENTER);
         this.vyjono.x=this.mogyzajo().width/2;
         this.vyjono.addEventListener(MouseEvent.CLICK,this.begen);
         addChild(this.vyjono);
         return;
      }

      private function wyjam() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nulopy=new Guzowoja().setSize(22).setColor(11776947);
         this.nulopy.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.nulopy.setStringBuilder(new Vofezuzy(this.model.getName()));
         this.nulopy.filters=[this.megero];
         this.nulopy.y=24;
         this.nulopy.x=(this.mogyzajo().width-this.nulopy.width)/2;
         addChild(this.nulopy);
         return;
      }

      function mogyzajo() : Rectangle {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Rectangle = new Rectangle();
         if(stage)
         {
            _loc1_=new Rectangle(0,0,stage.stageWidth,stage.stageHeight);
         }
         return _loc1_;
      }

      private var medu:int = 106;

      private function bucy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.voci=new Shape();
         this.voci.graphics.clear();
         this.voci.graphics.lineStyle(2,5526612);
         this.voci.graphics.moveTo(0,this.medu);
         this.voci.graphics.lineTo(this.mogyzajo().width,this.medu);
         this.voci.graphics.moveTo(466,107);
         this.voci.graphics.lineTo(466,526);
         this.voci.graphics.lineStyle();
         addChild(this.voci);
         return;
      }

      private function begen(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.chooseName.dispatch();
         return;
      }

      private function qorav(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lujy.quwakeco(-this.jecilo.devaqe()*(this.rogy-400));
         return;
      }

      public function razagysu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.figyqudaq=new Kumamy();
         this.figyqudaq.x=14;
         this.figyqudaq.y=40;
         addChild(this.figyqudaq);
         this.reqiwuso(this.gywij);
         return;
      }

      public function totusek() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gywij=new PackageButton();
         this.gywij.init();
         this.gywij.x=6;
         this.gywij.y=40;
         addChild(this.gywij);
         this.reqiwuso(this.figyqudaq);
         return;
      }

      private function reqiwuso(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((param1)&&(contains(param1)))
         {
            removeChild(param1);
         }
         return;
      }

      private function vyditoq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.dopinowys()==0)
         {
            this.newCharacter.dispatch();
         }
         else
         {
            this.naga.dispatch();
         }
         return;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nulopy.setStringBuilder(new Vofezuzy(this.model.getName()));
         this.nulopy.x=(this.mogyzajo().width-this.nulopy.width)*0.5;
         if(this.vyjono)
         {
            removeChild(this.vyjono);
            this.vyjono=null;
         }
         return;
      }
   }

}