package vaqob
{
   import flash.events.MouseEvent;
   import kyre.Won;
   import com.company.assembleegameclient.game.GameSprite;
   import aaa.rotmg.i18n.I18nKeys;


   public class GuildChroniclePanel extends Wutifuh
   {
      public function GuildChroniclePanel(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1,I18nKeys.figinalu,I18nKeys.kimoryqu);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gs_.mui_.clearInput();
         gs_.addChild(new Won(gs_));
         return;
      }
   }

}