package vaqob
{
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.game.GameSprite;
   import aaa.rotmg.i18n.I18nKeys;


   public class CharacterChangerPanel extends Wutifuh
   {
      public function CharacterChangerPanel(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1,I18nKeys.jycake,I18nKeys.junafoq);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gs_.closed.dispatch();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==UserConfig.data_.interact&&stage.focus==null)
         {
            gs_.closed.dispatch();
         }
         return;
      }
   }

}