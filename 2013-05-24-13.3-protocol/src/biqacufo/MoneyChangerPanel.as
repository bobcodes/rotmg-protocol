package biqacufo
{
   import vaqob.Wutifuh;
   import tulunyno.Hugyqufyq;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.game.GameSprite;
   import aaa.rotmg.i18n.I18nKeys;


   public class MoneyChangerPanel extends Wutifuh
   {
      public function MoneyChangerPanel(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1,I18nKeys.kemu,I18nKeys.muruc);
         this.taz=new Hugyqufyq();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var taz:Hugyqufyq;

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

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.taz.dispatch();
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==UserConfig.data_.interact&&stage.focus==null)
         {
            this.taz.dispatch();
         }
         return;
      }
   }

}