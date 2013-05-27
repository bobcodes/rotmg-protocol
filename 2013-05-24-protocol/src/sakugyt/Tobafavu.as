package sakugyt
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Tira;
   import __AS3__.vec.Vector;
   import kogyc.Server;
   import tulunyno.Hugyqufyq;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import vahejo.Muhado;
   import ruwysepyd.Vedoqawe;
   import flash.display.Graphics;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import vahejo.Tetywybil;


   public class Tobafavu extends Sprite
   {
      public function Tobafavu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(new Tetywybil());
         this.sewig=new Hugyqufyq();
         addChild(new Tetywybil());
         addChild(new Mecunenim());
         return;
      }

      private var kaqataw:Lufub;

      private var tuto:Shape;

      private var fir:Sprite;

      private var cahug:Wemufuq;

      private var cunahide:Tira;

      private var servers:Vector.<Server>;

      public var sewig:Hugyqufyq;

      private function qugar(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cahug.y=8-this.cunahide.cimubito()*(this.cahug.height-400);
         return;
      }

      public function initialize(param1:Vector.<Server>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.servers=param1;
         this.turel();
         this.tegu();
         this.makeContainer();
         this.zigyzuv();
         this.pupik();
         GA.global().trackPageview("/serversScreen");
         return;
      }

      private function pupik() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Muhado = new Muhado();
         var _loc2_:Tiqigawul = Vedoqawe.sylawisu();
         _loc1_.ryquwocy(_loc2_,Muhado.CENTER);
         _loc2_.siperu.add(this.zun);
         addChild(_loc1_);
         return;
      }

      private function kij() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cunahide=new Tira(16,400);
         this.cunahide.x=800-this.cunahide.width-4;
         this.cunahide.y=104;
         this.cunahide.jyqecubi(400,this.cahug.height);
         this.cunahide.addEventListener(Event.CHANGE,this.qugar);
         addChild(this.cunahide);
         return;
      }

      private function zigyzuv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cahug=new Wemufuq(this.servers);
         this.cahug.y=8;
         this.cahug.addEventListener(Event.COMPLETE,this.zun);
         this.fir.addChild(this.cahug);
         return;
      }

      private function makeContainer() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fir=new Sprite();
         this.fir.x=4;
         this.fir.y=100;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(16777215);
         _loc1_.graphics.drawRect(0,0,776,430);
         _loc1_.graphics.endFill();
         this.fir.addChild(_loc1_);
         this.fir.mask=_loc1_;
         addChild(this.fir);
         return;
      }

      private function tegu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuto=new Shape();
         var _loc1_:Graphics = this.tuto.graphics;
         _loc1_.clear();
         _loc1_.lineStyle(2,5526612);
         _loc1_.moveTo(0,100);
         _loc1_.lineTo(stage.stageWidth,100);
         _loc1_.lineStyle();
         addChild(this.tuto);
         return;
      }

      private function turel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kaqataw=new Lufub().setSize(18).setColor(11776947).setBold(true);
         this.kaqataw.setStringBuilder(new Sire().setParams(I18nKeys.babyqu));
         this.kaqataw.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.kaqataw.x=18;
         this.kaqataw.y=72;
         addChild(this.kaqataw);
         return;
      }

      private function zun() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sewig.dispatch();
         return;
      }
   }

}