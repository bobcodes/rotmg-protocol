package nas
{
   import flash.events.Event;
   import aaa.rotmg.i18n.I18nKeys;


   public class NotEnoughFameDialog extends Dialog
   {
      public function NotEnoughFameDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(I18nKeys.becov,I18nKeys.dyk,I18nKeys.sogisa,null,"/notEnoughFame");
         addEventListener(LEFT_BUTTON,this.bike);
         return;
      }

      public function bike(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         parent.removeChild(this);
         return;
      }
   }

}