package mipiqevul
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import nas.Dialog;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;


   public class ConfirmDeleteCharacterDialog extends Sprite
   {
      public function ConfirmDeleteCharacterDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.deleteCharacter=new Hugyqufyq();
         this.cancel=new Hugyqufyq();
         return;
      }

      private const zypij:String = Dialog.LEFT_BUTTON;

      private const piculeh:String = Dialog.RIGHT_BUTTON;

      public var deleteCharacter:Hugyqufyq;

      public var cancel:Hugyqufyq;

      public function sonydiw(param1:String, param2:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Dialog = new Dialog(I18nKeys.kehal,"",I18nKeys.sevukin,I18nKeys.koz,"/deleteDialog");
         _loc3_.bipefybo(I18nKeys.him,
            {
               name:param1,
               displayID:param2
            }
         );
         _loc3_.addEventListener(this.zypij,this.onCancel);
         _loc3_.addEventListener(this.piculeh,this.onDelete);
         addChild(_loc3_);
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      private function onDelete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.deleteCharacter.dispatch();
         return;
      }
   }

}