package liwaqa
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import tulunyno.Hugyqufyq;
   import flash.events.Event;
   import nec.Sire;
   import flash.text.TextFormatAlign;
   import aaa.rotmg.i18n.I18nKeys;
   import jezasowib.Tiqufu;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;


   public class Qazukifat extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qazukifat() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private static const wali:int = 8;

      private static const jyjimi:int = 120;

      private static const tajufojyr:int = 16;

      private static const kelirocu:int = 546;

      private static const nihuw:int = 416;

      private static const gacuzi:int = 368;

      private static const wakidoc:int = 164;

      private static const zijocyqo:int = 210;

      private const background:DisplayObject = this.gehepu();

      private const title:Lufub = this.ladifol();

      private const qapy:Lufub = this.tate();

      private const tydapohe:Lufub = this.syli();

      private const close:Dogyqijec = this.nagelywig();

      public const closed:Hugyqufyq = new Zojygese(this.close,MouseEvent.CLICK);

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         x=(stage.stageWidth-width)/2;
         y=(stage.stageHeight-height)/2;
         return;
      }

      public function setTitle(param1:String) : Qazukifat {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.title.setStringBuilder(new Sire().setParams(param1));
         return this;
      }

      public function setBody(param1:String, param2:String) : Qazukifat {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qapy.setStringBuilder(new Sire().setParams(param1));
         this.tydapohe.setStringBuilder(new Sire().setParams(param2));
         return this;
      }

      private function gehepu() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Ketag = new Ketag();
         addChild(_loc1_);
         return _loc1_;
      }

      private function ladifol() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = null;
         _loc1_=new Lufub().setSize(18).setColor(11974326).setTextWidth(kelirocu).setAutoSize(TextFormatAlign.CENTER).setBold(true);
         _loc1_.y=wali;
         addChild(_loc1_);
         return _loc1_;
      }

      private function tate() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = null;
         _loc1_=new Lufub().setSize(14).setColor(14864077).setTextWidth(nihuw).setAutoSize(TextFormatAlign.CENTER).setBold(true);
         _loc1_.x=(kelirocu-nihuw)*0.5;
         _loc1_.y=wakidoc;
         addChild(_loc1_);
         return _loc1_;
      }

      private function syli() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = new Lufub().setSize(14).setColor(10914439).setTextWidth(nihuw).setAutoSize(TextFormatAlign.CENTER);
         _loc1_.x=(kelirocu-nihuw)*0.5;
         _loc1_.y=zijocyqo;
         addChild(_loc1_);
         return _loc1_;
      }

      private function nagelywig() : Dogyqijec {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dogyqijec = new Dogyqijec(tajufojyr,I18nKeys.CLOSE,jyjimi);
         _loc1_.textChanged.addOnce(this.qenacufuj);
         _loc1_.y=gacuzi;
         addChild(_loc1_);
         return _loc1_;
      }

      private function qenacufuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         new Tiqufu().layout(kelirocu,this.close);
         return;
      }
   }

}