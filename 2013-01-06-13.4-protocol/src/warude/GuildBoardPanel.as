package warude
{
[CLASS1670]   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import gibu.Rekuzob;
   import com.company.assembleegameclient.util.GuildUtil;
   import com.company.assembleegameclient.game.GameSprite;
   import haqakel.Kefyfa;


   public class GuildBoardPanel extends Suraniny
   {
      public function GuildBoardPanel(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1,Kefyfa.hew,Kefyfa.zapoqiwov);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Player = gs_.map.player_;
         if(_loc2_==null)
         {
            return;
         }
         gs_.addChild(new Rekuzob(_loc2_.guildRank_>=GuildUtil.jaw));
         return;
      }
   }
[/CLASS]
}