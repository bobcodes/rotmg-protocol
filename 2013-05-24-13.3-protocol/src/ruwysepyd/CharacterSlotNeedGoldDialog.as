package ruwysepyd
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import nas.Dialog;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;


   public class CharacterSlotNeedGoldDialog extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterSlotNeedGoldDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const ziboti:String = "/charSlotNeedGold";

      public const geziwyv:Hugyqufyq = new Hugyqufyq();

      public const cancel:Hugyqufyq = new Hugyqufyq();

      private var kycusoqum:Dialog;

      private var price:int;

      public function setPrice(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.price=param1;
         this.detuloca();
         this.kycusoqum.addEventListener(Dialog.LEFT_BUTTON,this.onCancel);
         this.kycusoqum.addEventListener(Dialog.RIGHT_BUTTON,this.cowi);
         return;
      }

      private function detuloca() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kycusoqum=new Dialog(I18nKeys.jevyby,"",I18nKeys.toryryqos,I18nKeys.nehazi,ziboti);
         this.kycusoqum.bipefybo(I18nKeys.medelateg,{price:this.price});
         addChild(this.kycusoqum);
         return;
      }

      public function onCancel(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      public function cowi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.geziwyv.dispatch();
         return;
      }
   }

}