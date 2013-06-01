package jat
{
[CLASS254]   import flash.display.Sprite;
   import fyvanod.Pyni;
   import pudev.Capitu;
   import flash.display.DisplayObject;
   import com.company.assembleegameclient.ui.Cid;
   import tinava.Dab;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import tidi.Dak;
   import kozaligov.Bapipe;


   public class Bijaf extends Sprite
   {
      public function Bijaf(param1:String, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.puro=Qohi;
         super();
         this.petName=param1;
         this.skinType=param2;
         this.fytirehin.addEventListener(MouseEvent.MOUSE_DOWN,this.pydukil);
         return;
      }

      private var puro:Class;

      private const background:Pyni = Bapipe.walob(289,279);

      private const wodigupu:Capitu = Bapipe.kejajaqyv(16777215,18,true);

      private const beduvip:Capitu = Bapipe.kejajaqyv(16777103,16,true);

      private const tyjyz:DisplayObject = new this.puro();

      private const fytirehin:Cid = new Cid(16,"Pets.sendToYard",120);

      public const closed:Dab = new Dab();

      var skinType:int;

      private var dyvizi:Bitmap;

      private var petName:String;

      private function pydukil(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.closed.dispatch();
         return;
      }

      public function init(param1:Bitmap) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dyvizi=param1;
         this.div();
         this.tozibyt();
         this.mipuguc();
         this.sym();
         return;
      }

      private function div() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wodigupu.setStringBuilder(new Zufi().setParams(Kefyfa.pifygup));
         this.beduvip.setStringBuilder(new Zufi().setParams(this.petName));
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closed.dispatch();
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tyjyz.y=31;
         addChild(this.background);
         addChild(this.wodigupu);
         addChild(this.beduvip);
         addChild(this.tyjyz);
         addChild(this.fytirehin);
         addChild(this.dyvizi);
         return;
      }

      private function sym() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wavyfy();
         this.dyvizi.x=(287-this.dyvizi.width)*0.5;
         this.tyjyz.x=1;
         this.tyjyz.y=32;
         this.dyvizi.x=this.dyvizi.x-5;
         this.dyvizi.y=41;
         return;
      }

      private function wavyfy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.x=(stage.stageWidth-this.width)*0.5;
         this.y=(stage.stageHeight-this.height)*0.5;
         return;
      }

      private function tozibyt() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dak = new Dak();
         _loc1_.push(this.wodigupu.textChanged);
         _loc1_.push(this.beduvip.textChanged);
         _loc1_.complete.addOnce(this.fiqapek);
         this.fytirehin.textChanged.add(this.rahuzifok);
         return;
      }

      private function rahuzifok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fytirehin.x=(287-this.fytirehin.width)*0.5;
         this.fytirehin.y=240;
         return;
      }

      private function fiqapek() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wodigupu.x=(287-this.wodigupu.width)*0.5;
         this.wodigupu.y=23;
         this.beduvip.x=(287-this.beduvip.width)*0.5;
         this.beduvip.y=230;
         return;
      }
   }
[/CLASS]
}