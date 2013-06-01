package qilarag
{
[CLASS500]   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Gogo;
   import __AS3__.vec.Vector;
   import wyjimigo.Server;
   import tinava.Dab;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import rymuhuduh.Jadyluf;
   import tidi.Qifucivem;
   import flash.display.Graphics;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import rymuhuduh.Cyzan;


   public class Wyqahi extends Sprite
   {
      public function Wyqahi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(new Cyzan());
         this.fanores=new Dab();
         addChild(new Cyzan());
         addChild(new Sinutuci());
         return;
      }

      private var memazuba:Capitu;

      private var kuvyn:Shape;

      private var vowuny:Sprite;

      private var lyzuwi:Ryto;

      private var ras:Gogo;

      private var servers:Vector.<Server>;

      public var fanores:Dab;

      private function requgo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lyzuwi.y=8-this.ras.repofav()*(this.lyzuwi.height-400);
         return;
      }

      public function initialize(param1:Vector.<Server>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.servers=param1;
         this.jol();
         this.pobo();
         this.makeContainer();
         this.gohi();
         this.sokivife();
         GA.global().trackPageview("/serversScreen");
         return;
      }

      private function sokivife() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Jadyluf = new Jadyluf();
         var _loc2_:Boqurot = Qifucivem.doha();
         _loc1_.tisypure(_loc2_,Jadyluf.CENTER);
         _loc2_.zokokof.add(this.kur);
         addChild(_loc1_);
         return;
      }

      private function guz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ras=new Gogo(16,400);
         this.ras.x=800-this.ras.width-4;
         this.ras.y=104;
         this.ras.jewojomyb(400,this.lyzuwi.height);
         this.ras.addEventListener(Event.CHANGE,this.requgo);
         addChild(this.ras);
         return;
      }

      private function gohi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyzuwi=new Ryto(this.servers);
         this.lyzuwi.y=8;
         this.lyzuwi.addEventListener(Event.COMPLETE,this.kur);
         this.vowuny.addChild(this.lyzuwi);
         return;
      }

      private function makeContainer() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vowuny=new Sprite();
         this.vowuny.x=4;
         this.vowuny.y=100;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(16777215);
         _loc1_.graphics.drawRect(0,0,776,430);
         _loc1_.graphics.endFill();
         this.vowuny.addChild(_loc1_);
         this.vowuny.mask=_loc1_;
         addChild(this.vowuny);
         return;
      }

      private function pobo() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kuvyn=new Shape();
         var _loc1_:Graphics = this.kuvyn.graphics;
         _loc1_.clear();
         _loc1_.lineStyle(2,5526612);
         _loc1_.moveTo(0,100);
         _loc1_.lineTo(stage.stageWidth,100);
         _loc1_.lineStyle();
         addChild(this.kuvyn);
         return;
      }

      private function jol() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.memazuba=new Capitu().setSize(18).setColor(11776947).setBold(true);
         this.memazuba.setStringBuilder(new Zufi().setParams(Kefyfa.wyhupebo));
         this.memazuba.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.memazuba.x=18;
         this.memazuba.y=72;
         addChild(this.memazuba);
         return;
      }

      private function kur() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fanores.dispatch();
         return;
      }
   }
[/CLASS]
}