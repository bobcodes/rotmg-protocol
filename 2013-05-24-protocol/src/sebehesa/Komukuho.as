package sebehesa
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;
   import movimet.Lufub;
   import sakugyt.Tiqigawul;
   import com.company.assembleegameclient.ui.Tira;
   import sibaworop.Seqyw;
   import vahejo.Tetywybil;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import flash.display.Shape;
   import flash.display.Graphics;
   import com.company.rotmg.graphics.ScreenGraphic;
   import sibaworop.Timespan;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Komukuho extends Sprite
   {
      public function Komukuho() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.nobypu();
         this.gysyse();
         this.figi();
         this.fagabized();
         this.foja();
         this.sygutuv();
         this.tegu();
         this.kij();
         this.qiho();
         this.nagelywig();
         return;
      }

      public const cunutap:Hugyqufyq = new Hugyqufyq(Timespan);

      public const kybol:Hugyqufyq = new Hugyqufyq(Seqyw);

      public const close:Hugyqufyq = new Hugyqufyq();

      private const dym:Vector.<Qakyv> = new Vector.<Qakyv>(0);

      private const liluhe:Object = {};

      private var title:Lufub;

      private var vybop:Lufub;

      private var fudyganuc:Lufub;

      private var cyseje:Sprite;

      private var pisykyr:Tiqigawul;

      private var dafuty:Tira;

      private var rupit:Sprite;

      private var feryje:Doky;

      private var legends:Vector.<Seqyw>;

      private var count:int;

      private function nobypu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new Tetywybil());
         return;
      }

      private function gysyse() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.title=new Lufub().setSize(32).setColor(11776947);
         this.title.setAutoSize(TextFieldAutoSize.CENTER);
         this.title.setBold(true);
         this.title.setStringBuilder(new Sire().setParams(I18nKeys.pebymevi));
         this.title.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.title.x=400-this.title.width/2;
         this.title.y=24;
         addChild(this.title);
         return;
      }

      private function figi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vybop=new Lufub().setSize(22).setColor(11776947);
         this.vybop.setBold(true);
         this.vybop.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         this.vybop.setStringBuilder(new Sire().setParams(I18nKeys.fisibecoj));
         this.vybop.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.vybop.x=800/2;
         this.vybop.y=600/2;
         this.vybop.visible=false;
         addChild(this.vybop);
         return;
      }

      private function fagabized() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fudyganuc=new Lufub().setSize(22).setColor(11776947);
         this.fudyganuc.setBold(true);
         this.fudyganuc.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         this.fudyganuc.setStringBuilder(new Sire().setParams(I18nKeys.lenal));
         this.fudyganuc.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.fudyganuc.x=800/2;
         this.fudyganuc.y=600/2;
         this.fudyganuc.visible=false;
         addChild(this.fudyganuc);
         return;
      }

      private function foja() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Shape = null;
         _loc1_=new Shape();
         var _loc2_:Graphics = _loc1_.graphics;
         _loc2_.beginFill(0);
         _loc2_.drawRect(0,0,Qakyv.WIDTH,430);
         _loc2_.endFill();
         this.cyseje=new Sprite();
         this.cyseje.x=10;
         this.cyseje.y=110;
         this.cyseje.addChild(_loc1_);
         this.cyseje.mask=_loc1_;
         addChild(this.cyseje);
         return;
      }

      private function sygutuv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new ScreenGraphic());
         return;
      }

      private function tegu() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Shape = new Shape();
         addChild(_loc1_);
         var _loc2_:Graphics = _loc1_.graphics;
         _loc2_.lineStyle(2,5526612);
         _loc2_.moveTo(0,100);
         _loc2_.lineTo(800,100);
         return;
      }

      private function kij() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dafuty=new Tira(16,400);
         this.dafuty.x=800-this.dafuty.width-4;
         this.dafuty.y=104;
         addChild(this.dafuty);
         return;
      }

      private function qiho() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Vector.<Timespan> = Timespan.zesaduqy;
         var _loc2_:int = _loc1_.length;
         var _loc3_:* = 0;
         while(_loc3_<_loc2_)
         {
            this.bubyvo(_loc1_[_loc3_],_loc3_);
            _loc3_++;
         }
         return;
      }

      private function bubyvo(param1:Timespan, param2:int) : Doky {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Doky = new Doky(param1);
         this.liluhe[param1.tufu()]=_loc3_;
         _loc3_.x=20+param2*90;
         _loc3_.y=70;
         _loc3_.selected.add(this.reku);
         addChild(_loc3_);
         return _loc3_;
      }

      private function reku(param1:Doky) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.feryje!=param1)
         {
            this.rumomo(param1);
         }
         return;
      }

      private function rumomo(param1:Doky) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.beziny(param1);
         this.cunutap.dispatch(this.feryje.jusihuz());
         return;
      }

      private function beziny(param1:Doky) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.feryje=param1;
         this.feryje.piloni(true);
         return;
      }

      private function nagelywig() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pisykyr=new Tiqigawul(I18nKeys.malinufyz,36,false);
         this.pisykyr.setAutoSize(TextFieldAutoSize.CENTER);
         this.pisykyr.setVerticalAlign(Lufub.MIDDLE);
         this.pisykyr.x=400;
         this.pisykyr.y=553;
         addChild(this.pisykyr);
         this.pisykyr.addEventListener(MouseEvent.CLICK,this.tarafabon);
         return;
      }

      private function tarafabon(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rupit=null;
         this.dafuty.visible=false;
         return;
      }

      private function duzuhipad() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Qakyv = null;
         for each (_loc1_ in this.dym)
         {
            _loc1_.selected.remove(this.fyzapar);
         }
         this.dym.length=0;
         this.cyseje.removeChild(this.rupit);
         this.rupit=null;
         return;
      }

      public function cukivomy(param1:Timespan, param2:Vector.<Seqyw>) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.clear();
         this.beziny(this.liluhe[param1.tufu()]);
         this.rupit=new Sprite();
         this.legends=param2;
         this.count=param2.length;
         this.dym.length=this.count;
         this.fudyganuc.visible=this.count==0;
         this.hulih();
         this.cyseje.addChild(this.rupit);
         this.wozavywu();
         return;
      }

      private function hulih() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_<this.count)
         {
            this.dym[_loc1_]=this.zekeqehah(_loc1_);
            _loc1_++;
         }
         return;
      }

      private function zekeqehah(param1:int) : Qakyv {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Seqyw = this.legends[param1];
         _loc2_.fugafi=param1+1;
         var _loc3_:Qakyv = new Qakyv(_loc2_);
         _loc3_.y=param1*Qakyv.HEIGHT;
         _loc3_.selected.add(this.fyzapar);
         this.rupit.addChild(_loc3_);
         return _loc3_;
      }

      private function wozavywu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.rupit.height>400)
         {
            this.dafuty.visible=true;
            this.dafuty.jyqecubi(400,this.rupit.height);
            this.dafuty.addEventListener(Event.CHANGE,this.qugar);
            this.wicijelu();
         }
         else
         {
            this.dafuty.removeEventListener(Event.CHANGE,this.qugar);
            this.dafuty.visible=false;
         }
         return;
      }

      private function wicijelu() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc1_:Seqyw = this.hamib();
         if(_loc1_)
         {
            _loc2_=this.legends.indexOf(_loc1_);
            _loc3_=(_loc2_+0.5)*Qakyv.HEIGHT;
            this.dafuty.ricos((_loc3_-200)/(this.rupit.height-400));
         }
         return;
      }

      private function hamib() : Seqyw {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Seqyw = null;
         var _loc2_:Seqyw = null;
         for each (_loc2_ in this.legends)
         {
            if(_loc2_.safafyca)
            {
               _loc1_=_loc2_;
               break;
            }
         }
         return _loc1_;
      }

      private function fyzapar(param1:Seqyw) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kybol.dispatch(param1);
         return;
      }

      private function qugar(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rupit.y=-this.dafuty.cimubito()*(this.rupit.height-400);
         return;
      }

      public function welyzyg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vybop.visible=true;
         return;
      }

      public function kozig() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vybop.visible=false;
         return;
      }
   }

}