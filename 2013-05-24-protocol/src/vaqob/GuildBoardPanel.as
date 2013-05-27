package vaqob
{
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import zelym.Hefekoq;
   import com.company.assembleegameclient.util.GuildUtil;
   import com.company.assembleegameclient.game.GameSprite;
   import aaa.rotmg.i18n.I18nKeys;


   public class GuildBoardPanel extends Wutifuh
   {
      public function GuildBoardPanel(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1,I18nKeys.vyhudoj,I18nKeys.kimoryqu);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Player = gs_.map.player_;
         if(_loc2_==null)
         {
            return;
         }
         gs_.addChild(new Hefekoq(_loc2_.guildRank_>=GuildUtil.cuzigol));
         return;
      }
   }

}