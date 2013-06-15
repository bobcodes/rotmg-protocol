package gudon
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;
   import hivysif.Guzowoja;
   import waryp.Nulejufyl;
   import com.company.assembleegameclient.ui.Gequrenaj;
   import zynuqu.Topunu;
   import qymoho.Taziw;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import flash.display.Shape;
   import flash.display.Graphics;
   import com.company.rotmg.graphics.ScreenGraphic;
   import zynuqu.Timespan;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Rybapyj extends Sprite
   {
      public function Rybapyj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.kivor();
         this.nelegetow();
         this.kygi();
         this.vuhefiri();
         this.zoqud();
         this.jyg();
         this.wucijahef();
         this.rudap();
         this.tuboj();
         this.dozal();
         return;
      }

      public const relygevah:Qanyduk = new Qanyduk(Timespan);

      public const wibulotavy:Qanyduk = new Qanyduk(Topunu);

      public const close:Qanyduk = new Qanyduk();

      private const mumun:Vector.<Tupamiqyz> = new Vector.<Tupamiqyz>(0);

      private const nidawybi:Object = {};

      private var title:Guzowoja;

      private var jugedoha:Guzowoja;

      private var gyjus:Guzowoja;

      private var qyba:Sprite;

      private var gopubotag:Nulejufyl;

      private var jecilo:Gequrenaj;

      private var gisobujup:Sprite;

      private var jyjiniz:Wony;

      private var legends:Vector.<Topunu>;

      private var count:int;

      private function kivor() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(new Taziw());
         return;
      }

      private function nelegetow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.title=new Guzowoja().setSize(32).setColor(11776947);
         this.title.setAutoSize(TextFieldAutoSize.CENTER);
         this.title.setBold(true);
         this.title.setStringBuilder(new Kybidu().setParams(Vibemod.fovolot));
         this.title.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.title.x=400-this.title.width/2;
         this.title.y=24;
         addChild(this.title);
         return;
      }

      private function kygi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jugedoha=new Guzowoja().setSize(22).setColor(11776947);
         this.jugedoha.setBold(true);
         this.jugedoha.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         this.jugedoha.setStringBuilder(new Kybidu().setParams(Vibemod.rasih));
         this.jugedoha.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.jugedoha.x=800/2;
         this.jugedoha.y=600/2;
         this.jugedoha.visible=false;
         addChild(this.jugedoha);
         return;
      }

      private function vuhefiri() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gyjus=new Guzowoja().setSize(22).setColor(11776947);
         this.gyjus.setBold(true);
         this.gyjus.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         this.gyjus.setStringBuilder(new Kybidu().setParams(Vibemod.vosi));
         this.gyjus.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.gyjus.x=800/2;
         this.gyjus.y=600/2;
         this.gyjus.visible=false;
         addChild(this.gyjus);
         return;
      }

      private function zoqud() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Shape = null;
         _loc1_=new Shape();
         var _loc2_:Graphics = _loc1_.graphics;
         _loc2_.beginFill(0);
         _loc2_.drawRect(0,0,Tupamiqyz.WIDTH,430);
         _loc2_.endFill();
         this.qyba=new Sprite();
         this.qyba.x=10;
         this.qyba.y=110;
         this.qyba.addChild(_loc1_);
         this.qyba.mask=_loc1_;
         addChild(this.qyba);
         return;
      }

      private function jyg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new ScreenGraphic());
         return;
      }

      private function wucijahef() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Shape = new Shape();
         addChild(_loc1_);
         var _loc2_:Graphics = _loc1_.graphics;
         _loc2_.lineStyle(2,5526612);
         _loc2_.moveTo(0,100);
         _loc2_.lineTo(800,100);
         return;
      }

      private function rudap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jecilo=new Gequrenaj(16,400);
         this.jecilo.x=800-this.jecilo.width-4;
         this.jecilo.y=104;
         addChild(this.jecilo);
         return;
      }

      private function tuboj() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Vector.<Timespan> = Timespan.joqed;
         var _loc2_:int = _loc1_.length;
         var _loc3_:* = 0;
         while(_loc3_<_loc2_)
         {
            this.buviditov(_loc1_[_loc3_],_loc3_);
            _loc3_++;
         }
         return;
      }

      private function buviditov(param1:Timespan, param2:int) : Wony {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Wony = new Wony(param1);
         this.nidawybi[param1.rivur()]=_loc3_;
         _loc3_.x=20+param2*90;
         _loc3_.y=70;
         _loc3_.selected.add(this.wudiravuw);
         addChild(_loc3_);
         return _loc3_;
      }

      private function wudiravuw(param1:Wony) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.jyjiniz!=param1)
         {
            this.bob(param1);
         }
         return;
      }

      private function bob(param1:Wony) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sekyboqa(param1);
         this.relygevah.dispatch(this.jyjiniz.lymaw());
         return;
      }

      private function sekyboqa(param1:Wony) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jyjiniz=param1;
         this.jyjiniz.gowek(true);
         return;
      }

      private function dozal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gopubotag=new Nulejufyl(Vibemod.bucuw,36,false);
         this.gopubotag.setAutoSize(TextFieldAutoSize.CENTER);
         this.gopubotag.setVerticalAlign(Guzowoja.MIDDLE);
         this.gopubotag.x=400;
         this.gopubotag.y=553;
         addChild(this.gopubotag);
         this.gopubotag.addEventListener(MouseEvent.CLICK,this.famij);
         return;
      }

      private function famij(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gisobujup=null;
         this.jecilo.visible=false;
         return;
      }

      private function jon() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Tupamiqyz = null;
         for each (_loc1_ in this.mumun)
         {
            _loc1_.selected.remove(this.jirygaruc);
         }
         this.mumun.length=0;
         this.qyba.removeChild(this.gisobujup);
         this.gisobujup=null;
         return;
      }

      public function hyru(param1:Timespan, param2:Vector.<Topunu>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.clear();
         this.sekyboqa(this.nidawybi[param1.rivur()]);
         this.gisobujup=new Sprite();
         this.legends=param2;
         this.count=param2.length;
         this.mumun.length=this.count;
         this.gyjus.visible=this.count==0;
         this.noticisi();
         this.qyba.addChild(this.gisobujup);
         this.makagag();
         return;
      }

      private function noticisi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_<this.count)
         {
            this.mumun[_loc1_]=this.kajuril(_loc1_);
            _loc1_++;
         }
         return;
      }

      private function kajuril(param1:int) : Tupamiqyz {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Topunu = this.legends[param1];
         _loc2_.leqerat=param1+1;
         var _loc3_:Tupamiqyz = new Tupamiqyz(_loc2_);
         _loc3_.y=param1*Tupamiqyz.HEIGHT;
         _loc3_.selected.add(this.jirygaruc);
         this.gisobujup.addChild(_loc3_);
         return _loc3_;
      }

      private function makagag() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.gisobujup.height>400)
         {
            this.jecilo.visible=true;
            this.jecilo.vyhojig(400,this.gisobujup.height);
            this.jecilo.addEventListener(Event.CHANGE,this.qorav);
            this.bubokyto();
         }
         else
         {
            this.jecilo.removeEventListener(Event.CHANGE,this.qorav);
            this.jecilo.visible=false;
         }
         return;
      }

      private function bubokyto() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc1_:Topunu = this.rukeluco();
         if(_loc1_)
         {
            _loc2_=this.legends.indexOf(_loc1_);
            _loc3_=(_loc2_+0.5)*Tupamiqyz.HEIGHT;
            this.jecilo.quwakeco((_loc3_-200)/(this.gisobujup.height-400));
         }
         return;
      }

      private function rukeluco() : Topunu {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Topunu = null;
         var _loc2_:Topunu = null;
         for each (_loc2_ in this.legends)
         {
            if(_loc2_.zeto)
            {
               _loc1_=_loc2_;
               break;
            }
         }
         return _loc1_;
      }

      private function jirygaruc(param1:Topunu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wibulotavy.dispatch(param1);
         return;
      }

      private function qorav(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gisobujup.y=-this.jecilo.devaqe()*(this.gisobujup.height-400);
         return;
      }

      public function rekewok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jugedoha.visible=true;
         return;
      }

      public function wijygut() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jugedoha.visible=false;
         return;
      }
   }

}