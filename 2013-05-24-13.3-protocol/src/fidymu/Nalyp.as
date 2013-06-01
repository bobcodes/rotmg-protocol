package fidymu
{
   import flash.display.Sprite;
   import coh.Biba;
   import movimet.Lufub;
   import flash.display.DisplayObject;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import tulunyno.Hugyqufyq;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import ruwysepyd.Junefolef;
   import qucuqesif.Rasoqymi;


   public class Nalyp extends Sprite
   {
      public function Nalyp(param1:String, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.rolev=Qajenymuf;
         super();
         this.petName=param1;
         this.skinType=param2;
         this.gyled.addEventListener(MouseEvent.MOUSE_DOWN,this.seho);
         return;
      }

      private var rolev:Class;

      private const background:Biba = Rasoqymi.repanoqu(289,279);

      private const gotinip:Lufub = Rasoqymi.tefyko(16777215,18,true);

      private const gawuvenef:Lufub = Rasoqymi.tefyko(16777103,16,true);

      private const luq:DisplayObject = new this.rolev();

      private const gyled:Dogyqijec = new Dogyqijec(16,"Pets.sendToYard",120);

      public const closed:Hugyqufyq = new Hugyqufyq();

      var skinType:int;

      private var wum:Bitmap;

      private var petName:String;

      private function seho(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.closed.dispatch();
         return;
      }

      public function init(param1:Bitmap) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wum=param1;
         this.roper();
         this.vivi();
         this.qohinep();
         this.cenezyr();
         return;
      }

      private function roper() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gotinip.setStringBuilder(new Sire().setParams(I18nKeys.gasa));
         this.gawuvenef.setStringBuilder(new Sire().setParams(this.petName));
         return;
      }

      private function pomuwok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closed.dispatch();
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.luq.y=31;
         addChild(this.background);
         addChild(this.gotinip);
         addChild(this.gawuvenef);
         addChild(this.luq);
         addChild(this.gyled);
         addChild(this.wum);
         return;
      }

      private function cenezyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.keqej();
         this.wum.x=(287-this.wum.width)*0.5;
         this.luq.x=1;
         this.luq.y=32;
         this.wum.x=this.wum.x-5;
         this.wum.y=41;
         return;
      }

      private function keqej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.x=(stage.stageWidth-this.width)*0.5;
         this.y=(stage.stageHeight-this.height)*0.5;
         return;
      }

      private function vivi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.push(this.gotinip.textChanged);
         _loc1_.push(this.gawuvenef.textChanged);
         _loc1_.complete.addOnce(this.motiheh);
         this.gyled.textChanged.add(this.peniryreh);
         return;
      }

      private function peniryreh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gyled.x=(287-this.gyled.width)*0.5;
         this.gyled.y=240;
         return;
      }

      private function motiheh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gotinip.x=(287-this.gotinip.width)*0.5;
         this.gotinip.y=23;
         this.gawuvenef.x=(287-this.gawuvenef.width)*0.5;
         this.gawuvenef.y=230;
         return;
      }
   }

}