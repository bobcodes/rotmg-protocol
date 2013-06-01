package murez
{
   import flash.display.Sprite;
   import nico.Cugeti;
   import ruwysepyd.Junefolef;
   import qazoz.Bazek;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import tulunyno.Hugyqufyq;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import jezasowib.Tiqufu;
   import gyzesuqu.Zojygese;
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

      private static const halinyhu:int = 10;

      private static const kelirocu:int = Cugeti.WIDTH+halinyhu*2;

      private static const jyjimi:int = 120;

      private static const tajufojyr:int = 16;

      private static const nekuryp:int = 40;

      private static const mebosoha:int = 27;

      private const qigoqal:Junefolef = this.hemewogyso();

      private const background:Bazek = this.gehepu();

      private const title:Lufub = this.ladifol();

      private const list:Cugeti = this.bokaqigoc();

      private const cancel:Dogyqijec = this.kadep();

      private const select:Dogyqijec = this.kedemuke();

      public const pila:Hugyqufyq = new Zojygese(this.cancel,MouseEvent.CLICK);

      public const selected:Hugyqufyq = new Zojygese(this.select,MouseEvent.CLICK);

      public var pujokewu:int;

      private function hemewogyso() : Junefolef {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.complete.add(this.bivyluwuf);
         return _loc1_;
      }

      private function gehepu() : Bazek {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bazek = new Bazek();
         addChild(_loc1_);
         return _loc1_;
      }

      private function ladifol() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub().setSize(18).setColor(11974326).setTextWidth(kelirocu);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
         _loc1_.setStringBuilder(new Sire().setParams(I18nKeys.heryq));
         _loc1_.y=halinyhu*0.5;
         addChild(_loc1_);
         return _loc1_;
      }

      private function bokaqigoc() : Cugeti {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cugeti = null;
         _loc1_=new Cugeti();
         _loc1_.x=halinyhu;
         _loc1_.y=halinyhu+mebosoha;
         addChild(_loc1_);
         return _loc1_;
      }

      private function kadep() : Dogyqijec {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dogyqijec = new Dogyqijec(tajufojyr,I18nKeys.zijelu,jyjimi);
         addChild(_loc1_);
         this.qigoqal.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function kedemuke() : Dogyqijec {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dogyqijec = new Dogyqijec(tajufojyr,I18nKeys.fedybewe,jyjimi);
         addChild(_loc1_);
         this.qigoqal.push(_loc1_.textChanged);
         return _loc1_;
      }

      public function tefenam(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.list.setItems(param1);
         this.jez();
         this.lymyguda();
         this.bivyluwuf();
         return;
      }

      private function jez() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pujokewu=Math.min(Cugeti.HEIGHT+halinyhu,this.list.vuc());
         this.pujokewu=this.pujokewu+(nekuryp+halinyhu*2+mebosoha);
         return;
      }

      private function lymyguda() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background.draw(kelirocu,this.pujokewu);
         this.background.graphics.lineStyle(2,5987163,1,false,LineScaleMode.NONE,CapsStyle.NONE,JointStyle.BEVEL);
         this.background.graphics.moveTo(1,mebosoha);
         this.background.graphics.lineTo(kelirocu-1,mebosoha);
         return;
      }

      private function bivyluwuf() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Tiqufu = new Tiqufu();
         _loc1_.layout(kelirocu,this.cancel,this.select);
         this.cancel.y=this.select.y=this.pujokewu-nekuryp;
         return;
      }
   }

}