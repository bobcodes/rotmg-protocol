package caqu
{
[CLASS161]   import flash.display.Sprite;
   import tinava.Dab;
   import __AS3__.vec.Vector;
   import pudev.Capitu;
   import qilarag.Boqurot;
   import com.company.assembleegameclient.ui.Gogo;
   import dyvelo.Tobyd;
   import rymuhuduh.Cyzan;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import flash.display.Shape;
   import flash.display.Graphics;
   import com.company.rotmg.graphics.ScreenGraphic;
   import dyvelo.Timespan;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Jujadi extends Sprite
   {
      public function Jujadi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.wosobafuca();
         this.vodyfap();
         this.gilani();
         this.lydafo();
         this.rahywever();
         this.kijy();
         this.pobo();
         this.guz();
         this.suq();
         this.rafyte();
         return;
      }

      public const zedinit:Dab = new Dab(Timespan);

      public const siqucofuh:Dab = new Dab(Tobyd);

      public const close:Dab = new Dab();

      private const kina:Vector.<Wobesawiw> = new Vector.<Wobesawiw>(0);

      private const sapar:Object = {};

      private var title:Capitu;

      private var pamy:Capitu;

      private var lakus:Capitu;

      private var jufadykyk:Sprite;

      private var giqezi:Boqurot;

      private var jazuvabub:Gogo;

      private var tenyd:Sprite;

      private var niqupegu:Qote;

      private var legends:Vector.<Tobyd>;

      private var count:int;

      private function wosobafuca() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(new Cyzan());
         return;
      }

      private function vodyfap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.title=new Capitu().setSize(32).setColor(11776947);
         this.title.setAutoSize(TextFieldAutoSize.CENTER);
         this.title.setBold(true);
         this.title.setStringBuilder(new Zufi().setParams(Kefyfa.suzy));
         this.title.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.title.x=400-this.title.width/2;
         this.title.y=24;
         addChild(this.title);
         return;
      }

      private function gilani() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pamy=new Capitu().setSize(22).setColor(11776947);
         this.pamy.setBold(true);
         this.pamy.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         this.pamy.setStringBuilder(new Zufi().setParams(Kefyfa.kotuq));
         this.pamy.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.pamy.x=800/2;
         this.pamy.y=600/2;
         this.pamy.visible=false;
         addChild(this.pamy);
         return;
      }

      private function lydafo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lakus=new Capitu().setSize(22).setColor(11776947);
         this.lakus.setBold(true);
         this.lakus.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         this.lakus.setStringBuilder(new Zufi().setParams(Kefyfa.kaqyhofip));
         this.lakus.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.lakus.x=800/2;
         this.lakus.y=600/2;
         this.lakus.visible=false;
         addChild(this.lakus);
         return;
      }

      private function rahywever() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Shape = null;
         _loc1_=new Shape();
         var _loc2_:Graphics = _loc1_.graphics;
         _loc2_.beginFill(0);
         _loc2_.drawRect(0,0,Wobesawiw.WIDTH,430);
         _loc2_.endFill();
         this.jufadykyk=new Sprite();
         this.jufadykyk.x=10;
         this.jufadykyk.y=110;
         this.jufadykyk.addChild(_loc1_);
         this.jufadykyk.mask=_loc1_;
         addChild(this.jufadykyk);
         return;
      }

      private function kijy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(new ScreenGraphic());
         return;
      }

      private function pobo() : void {
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

      private function guz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jazuvabub=new Gogo(16,400);
         this.jazuvabub.x=800-this.jazuvabub.width-4;
         this.jazuvabub.y=104;
         addChild(this.jazuvabub);
         return;
      }

      private function suq() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Vector.<Timespan> = Timespan.tis;
         var _loc2_:int = _loc1_.length;
         var _loc3_:* = 0;
         while(_loc3_<_loc2_)
         {
            this.rak(_loc1_[_loc3_],_loc3_);
            _loc3_++;
         }
         return;
      }

      private function rak(param1:Timespan, param2:int) : Qote {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Qote = new Qote(param1);
         this.sapar[param1.venad()]=_loc3_;
         _loc3_.x=20+param2*90;
         _loc3_.y=70;
         _loc3_.selected.add(this.padet);
         addChild(_loc3_);
         return _loc3_;
      }

      private function padet(param1:Qote) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.niqupegu!=param1)
         {
            this.lufomasyk(param1);
         }
         return;
      }

      private function lufomasyk(param1:Qote) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.typuweq(param1);
         this.zedinit.dispatch(this.niqupegu.qase());
         return;
      }

      private function typuweq(param1:Qote) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.niqupegu=param1;
         this.niqupegu.ryb(true);
         return;
      }

      private function rafyte() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.giqezi=new Boqurot(Kefyfa.vihicaq,36,false);
         this.giqezi.setAutoSize(TextFieldAutoSize.CENTER);
         this.giqezi.setVerticalAlign(Capitu.MIDDLE);
         this.giqezi.x=400;
         this.giqezi.y=553;
         addChild(this.giqezi);
         this.giqezi.addEventListener(MouseEvent.CLICK,this.teqofenaq);
         return;
      }

      private function teqofenaq(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close.dispatch();
         return;
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tenyd=null;
         this.jazuvabub.visible=false;
         return;
      }

      private function jajet() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Wobesawiw = null;
         for each (_loc1_ in this.kina)
         {
            _loc1_.selected.remove(this.jobefyqij);
         }
         this.kina.length=0;
         this.jufadykyk.removeChild(this.tenyd);
         this.tenyd=null;
         return;
      }

      public function sojomube(param1:Timespan, param2:Vector.<Tobyd>) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.clear();
         this.typuweq(this.sapar[param1.venad()]);
         this.tenyd=new Sprite();
         this.legends=param2;
         this.count=param2.length;
         this.kina.length=this.count;
         this.lakus.visible=this.count==0;
         this.qygilud();
         this.jufadykyk.addChild(this.tenyd);
         this.vejyvima();
         return;
      }

      private function qygilud() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_<this.count)
         {
            this.kina[_loc1_]=this.figiwify(_loc1_);
            _loc1_++;
         }
         return;
      }

      private function figiwify(param1:int) : Wobesawiw {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Tobyd = this.legends[param1];
         _loc2_.petusyz=param1+1;
         var _loc3_:Wobesawiw = new Wobesawiw(_loc2_);
         _loc3_.y=param1*Wobesawiw.HEIGHT;
         _loc3_.selected.add(this.jobefyqij);
         this.tenyd.addChild(_loc3_);
         return _loc3_;
      }

      private function vejyvima() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tenyd.height>400)
         {
            this.jazuvabub.visible=true;
            this.jazuvabub.jewojomyb(400,this.tenyd.height);
            this.jazuvabub.addEventListener(Event.CHANGE,this.requgo);
            this.visosaw();
         }
         else
         {
            this.jazuvabub.removeEventListener(Event.CHANGE,this.requgo);
            this.jazuvabub.visible=false;
         }
         return;
      }

      private function visosaw() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc1_:Tobyd = this.tazo();
         if(_loc1_)
         {
            _loc2_=this.legends.indexOf(_loc1_);
            _loc3_=(_loc2_+0.5)*Wobesawiw.HEIGHT;
            this.jazuvabub.fifywuw((_loc3_-200)/(this.tenyd.height-400));
         }
         return;
      }

      private function tazo() : Tobyd {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Tobyd = null;
         var _loc2_:Tobyd = null;
         for each (_loc2_ in this.legends)
         {
            if(_loc2_.noca)
            {
               _loc1_=_loc2_;
               break;
            }
         }
         return _loc1_;
      }

      private function jobefyqij(param1:Tobyd) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.siqucofuh.dispatch(param1);
         return;
      }

      private function requgo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tenyd.y=-this.jazuvabub.repofav()*(this.tenyd.height-400);
         return;
      }

      public function huqiwod() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pamy.visible=true;
         return;
      }

      public function hacil() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pamy.visible=false;
         return;
      }
   }
[/CLASS]
}