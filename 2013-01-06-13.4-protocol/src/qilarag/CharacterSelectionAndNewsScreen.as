package qilarag
{
[CLASS468]   import flash.display.Sprite;
   import tinava.Dab;
   import behe.Cydepyk;
   import flash.filters.DropShadowFilter;
   import dylaqezo.Vusun;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Sosapa;
   import rucedosu.Vekowuris;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Gogo;
   import golac.PackageButton;
   import rymuhuduh.Jadyluf;
   import qutobiv.Jinutyqi;
   import flash.events.Event;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import totuhare.Javo;
   import flash.geom.Rectangle;
   import flash.display.DisplayObject;
   import tidi.Qifucivem;
   import rymuhuduh.Cyzan;


   public class CharacterSelectionAndNewsScreen extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function CharacterSelectionAndNewsScreen() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.newCharacter=new Dab();
         this.chooseName=new Dab();
         this.gatav=new Dab();
         this.dejomif=Qifucivem.vutok();
         this.lyroleq=Qifucivem.qufis();
         this.jevara=Qifucivem.tesy();
         super();
         this.close=this.jevara.zokokof;
         this.jeqabe=this.lyroleq.zokokof;
         addChild(new Cyzan());
         addChild(new Sinutuci());
         return;
      }

      private static const larita:int = 475;

      public var close:Dab;

      public var jeqabe:Dab;

      public var newCharacter:Dab;

      public var chooseName:Dab;

      public var gatav:Dab;

      public var coviqehu:Cydepyk;

      private const heduf:Number = 400;

      private const qoz:int = 108;

      private const jizeroc:int = 18;

      private const pasepyc:DropShadowFilter = new DropShadowFilter(0,0,0,1,8,8);

      private var model:Vusun;

      private var gor:Boolean;

      private var luwuz:Capitu;

      private var qir:Sosapa;

      private var ruvubaqyt:Vekowuris;

      private var zawegyqi:Capitu;

      private var nakyl:Capitu;

      private var nivemogi:Volozeqyb;

      private var guzeq:Number;

      private var lih:Shape;

      private var jazuvabub:Gogo;

      private var bevyh:PackageButton;

      private var dejomif:Boqurot;

      private var lyroleq:Boqurot;

      private var jevara:Boqurot;

      private var tuzudot:Jadyluf;

      public function initialize(param1:Vusun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.gor)
         {
            return;
         }
         this.gor=true;
         this.model=param1;
         this.pebubo(param1);
         return;
      }

      private function pebubo(param1:Vusun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dilop();
         this.qocuh();
         this.kybob();
         this.pobehu();
         this.zidozuvur();
         this.getunuzu();
         this.liza();
         this.pajuhevuc();
         if(this.guzeq>this.heduf)
         {
            this.rugywoqoq();
         }
         if(!param1.segafugan())
         {
            this.fowinufu();
         }
         return;
      }

      private function pajuhevuc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dejomif.zokokof.add(this.motyqonid);
         this.tuzudot=new Jadyluf();
         this.tuzudot.tisypure(this.dejomif,Jadyluf.CENTER);
         this.tuzudot.tisypure(this.jevara,Jadyluf.LEFT);
         this.tuzudot.tisypure(this.lyroleq,Jadyluf.RIGHT);
         addChild(this.tuzudot);
         return;
      }

      private function zidozuvur() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Jinutyqi = null;
         _loc1_=new Jinutyqi();
         _loc1_.x=larita;
         _loc1_.y=112;
         addChild(_loc1_);
         return;
      }

      private function rugywoqoq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jazuvabub=new Gogo(16,399);
         this.jazuvabub.x=443;
         this.jazuvabub.y=113;
         this.jazuvabub.jewojomyb(399,this.nivemogi.height);
         this.jazuvabub.addEventListener(Event.CHANGE,this.requgo);
         addChild(this.jazuvabub);
         return;
      }

      private function liza() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nivemogi=new Volozeqyb(this.model);
         this.nivemogi.x=this.jizeroc;
         this.nivemogi.y=this.qoz;
         this.guzeq=this.nivemogi.height;
         addChild(this.nivemogi);
         return;
      }

      private function pobehu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nakyl=new Capitu().setSize(18).setColor(11776947);
         this.nakyl.setBold(true);
         this.nakyl.setStringBuilder(new Zufi().setParams(Kefyfa.resocove));
         this.nakyl.filters=[this.pasepyc];
         this.nakyl.x=larita;
         this.nakyl.y=79;
         addChild(this.nakyl);
         return;
      }

      private function kybob() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zawegyqi=new Capitu().setSize(18).setColor(11776947);
         this.zawegyqi.setBold(true);
         this.zawegyqi.setStringBuilder(new Zufi().setParams(Kefyfa.johuqen));
         this.zawegyqi.filters=[this.pasepyc];
         this.zawegyqi.x=this.jizeroc;
         this.zawegyqi.y=79;
         addChild(this.zawegyqi);
         return;
      }

      private function qocuh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ruvubaqyt=new Vekowuris();
         this.ruvubaqyt.draw(this.model.gagesuno(),this.model.juzuf());
         this.ruvubaqyt.x=this.jegyl().width;
         this.ruvubaqyt.y=20;
         addChild(this.ruvubaqyt);
         return;
      }

      private function fowinufu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qir=new Sosapa(16,false,Kefyfa.tewykulyr);
         this.qir.y=50;
         this.qir.setAutoSize(TextFieldAutoSize.CENTER);
         this.qir.x=this.jegyl().width/2;
         this.qir.addEventListener(MouseEvent.CLICK,this.tugugubiv);
         addChild(this.qir);
         return;
      }

      private function dilop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.luwuz=new Capitu().setSize(22).setColor(11776947);
         this.luwuz.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.luwuz.setStringBuilder(new Javo(this.model.getName()));
         this.luwuz.filters=[this.pasepyc];
         this.luwuz.y=24;
         this.luwuz.x=(this.jegyl().width-this.luwuz.width)/2;
         addChild(this.luwuz);
         return;
      }

      function jegyl() : Rectangle {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Rectangle = new Rectangle();
         if(stage)
         {
            _loc1_=new Rectangle(0,0,stage.stageWidth,stage.stageHeight);
         }
         return _loc1_;
      }

      private var tipy:int = 106;

      private function getunuzu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lih=new Shape();
         this.lih.graphics.clear();
         this.lih.graphics.lineStyle(2,5526612);
         this.lih.graphics.moveTo(0,this.tipy);
         this.lih.graphics.lineTo(this.jegyl().width,this.tipy);
         this.lih.graphics.moveTo(466,107);
         this.lih.graphics.lineTo(466,526);
         this.lih.graphics.lineStyle();
         addChild(this.lih);
         return;
      }

      private function tugugubiv(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.chooseName.dispatch();
         return;
      }

      private function requgo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nivemogi.fifywuw(-this.jazuvabub.repofav()*(this.guzeq-400));
         return;
      }

      public function rozup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.coviqehu=new Cydepyk();
         this.coviqehu.x=14;
         this.coviqehu.y=40;
         addChild(this.coviqehu);
         this.howuwep(this.bevyh);
         return;
      }

      public function byt() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bevyh=new PackageButton();
         this.bevyh.init();
         this.bevyh.x=6;
         this.bevyh.y=40;
         addChild(this.bevyh);
         this.howuwep(this.coviqehu);
         return;
      }

      private function howuwep(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((param1)&&(contains(param1)))
         {
            removeChild(param1);
         }
         return;
      }

      private function motyqonid() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.wuj()==0)
         {
            this.newCharacter.dispatch();
         }
         else
         {
            this.gatav.dispatch();
         }
         return;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.luwuz.setStringBuilder(new Javo(this.model.getName()));
         this.luwuz.x=(this.jegyl().width-this.luwuz.width)*0.5;
         if(this.qir)
         {
            removeChild(this.qir);
            this.qir=null;
         }
         return;
      }
   }
[/CLASS]
}