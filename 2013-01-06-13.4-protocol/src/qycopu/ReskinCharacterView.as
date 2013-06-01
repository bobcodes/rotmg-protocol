package qycopu
{
[CLASS1311]   import flash.display.Sprite;
   import fumyl.Kynabisi;
   import tidi.Dak;
   import gicuzum.Jylopimy;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import tinava.Dab;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import rorijof.Tysen;
   import zehus.Kelapu;
   import flash.events.MouseEvent;


   public class ReskinCharacterView extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ReskinCharacterView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const batusow:int = 10;

      private static const lasewy:int = Kynabisi.WIDTH+batusow*2;

      private static const fob:int = 120;

      private static const buru:int = 16;

      private static const huvuhyr:int = 40;

      private static const biniw:int = 27;

      private const kadej:Dak = this.vutuw();

      private const background:Jylopimy = this.fawug();

      private const title:Capitu = this.jewyry();

      private const list:Kynabisi = this.widuha();

      private const cancel:Cid = this.lyfa();

      private const select:Cid = this.dypa();

      public const gytejus:Dab = new Kelapu(this.cancel,MouseEvent.CLICK);

      public const selected:Dab = new Kelapu(this.select,MouseEvent.CLICK);

      public var qunilojag:int;

      private function vutuw() : Dak {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dak = new Dak();
         _loc1_.complete.add(this.cibeqel);
         return _loc1_;
      }

      private function fawug() : Jylopimy {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Jylopimy = new Jylopimy();
         addChild(_loc1_);
         return _loc1_;
      }

      private function jewyry() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = new Capitu().setSize(18).setColor(11974326).setTextWidth(lasewy);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
         _loc1_.setStringBuilder(new Zufi().setParams(Kefyfa.naru));
         _loc1_.y=batusow*0.5;
         addChild(_loc1_);
         return _loc1_;
      }

      private function widuha() : Kynabisi {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Kynabisi = null;
         _loc1_=new Kynabisi();
         _loc1_.x=batusow;
         _loc1_.y=batusow+biniw;
         addChild(_loc1_);
         return _loc1_;
      }

      private function lyfa() : Cid {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cid = new Cid(buru,Kefyfa.wufeba,fob);
         addChild(_loc1_);
         this.kadej.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function dypa() : Cid {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cid = new Cid(buru,Kefyfa.pudydawu,fob);
         addChild(_loc1_);
         this.kadej.push(_loc1_.textChanged);
         return _loc1_;
      }

      public function faketafyn(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.list.setItems(param1);
         this.hofodi();
         this.pokyf();
         this.cibeqel();
         return;
      }

      private function hofodi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qunilojag=Math.min(Kynabisi.HEIGHT+batusow,this.list.hocagydyq());
         this.qunilojag=this.qunilojag+(huvuhyr+batusow*2+biniw);
         return;
      }

      private function pokyf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.draw(lasewy,this.qunilojag);
         this.background.graphics.lineStyle(2,5987163,1,false,LineScaleMode.NONE,CapsStyle.NONE,JointStyle.BEVEL);
         this.background.graphics.moveTo(1,biniw);
         this.background.graphics.lineTo(lasewy-1,biniw);
         return;
      }

      private function cibeqel() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Tysen = new Tysen();
         _loc1_.layout(lasewy,this.cancel,this.select);
         this.cancel.y=this.select.y=this.qunilojag-huvuhyr;
         return;
      }
   }
[/CLASS]
}