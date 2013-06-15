package waryp
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Gequrenaj;
   import __AS3__.vec.Vector;
   import jovurora.Server;
   import mukyrosu.Qanyduk;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import qymoho.Fipil;
   import wenono.Jovumuhaq;
   import flash.display.Graphics;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import qymoho.Taziw;


   public class Derofo extends Sprite
   {
      public function Derofo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(new Taziw());
         this.takalozy=new Qanyduk();
         addChild(new Taziw());
         addChild(new Cysaruha());
         return;
      }

      private var poviledun:Guzowoja;

      private var kirevu:Shape;

      private var niteb:Sprite;

      private var wycetus:Gyw;

      private var wypyzeq:Gequrenaj;

      private var servers:Vector.<Server>;

      public var takalozy:Qanyduk;

      private function qorav(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wycetus.y=8-this.wypyzeq.devaqe()*(this.wycetus.height-400);
         return;
      }

      public function initialize(param1:Vector.<Server>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.servers=param1;
         this.kykyjewan();
         this.wucijahef();
         this.makeContainer();
         this.nivusana();
         this.romedubes();
         GA.global().trackPageview("/serversScreen");
         return;
      }

      private function romedubes() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Fipil = new Fipil();
         var _loc2_:Nulejufyl = Jovumuhaq.qeciresa();
         _loc1_.mubob(_loc2_,Fipil.CENTER);
         _loc2_.peqe.add(this.vum);
         addChild(_loc1_);
         return;
      }

      private function rudap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wypyzeq=new Gequrenaj(16,400);
         this.wypyzeq.x=800-this.wypyzeq.width-4;
         this.wypyzeq.y=104;
         this.wypyzeq.vyhojig(400,this.wycetus.height);
         this.wypyzeq.addEventListener(Event.CHANGE,this.qorav);
         addChild(this.wypyzeq);
         return;
      }

      private function nivusana() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wycetus=new Gyw(this.servers);
         this.wycetus.y=8;
         this.wycetus.addEventListener(Event.COMPLETE,this.vum);
         this.niteb.addChild(this.wycetus);
         return;
      }

      private function makeContainer() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.niteb=new Sprite();
         this.niteb.x=4;
         this.niteb.y=100;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(16777215);
         _loc1_.graphics.drawRect(0,0,776,430);
         _loc1_.graphics.endFill();
         this.niteb.addChild(_loc1_);
         this.niteb.mask=_loc1_;
         addChild(this.niteb);
         return;
      }

      private function wucijahef() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kirevu=new Shape();
         var _loc1_:Graphics = this.kirevu.graphics;
         _loc1_.clear();
         _loc1_.lineStyle(2,5526612);
         _loc1_.moveTo(0,100);
         _loc1_.lineTo(stage.stageWidth,100);
         _loc1_.lineStyle();
         addChild(this.kirevu);
         return;
      }

      private function kykyjewan() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.poviledun=new Guzowoja().setSize(18).setColor(11776947).setBold(true);
         this.poviledun.setStringBuilder(new Kybidu().setParams(Vibemod.vodi));
         this.poviledun.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.poviledun.x=18;
         this.poviledun.y=72;
         addChild(this.poviledun);
         return;
      }

      private function vum() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.takalozy.dispatch();
         return;
      }
   }

}