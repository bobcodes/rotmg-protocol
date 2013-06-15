package fytalis
{
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import wari.Vuladiwat;
   import com.company.assembleegameclient.util.GuildUtil;
   import com.company.assembleegameclient.game.GameSprite;
   import komi.Vibemod;


   public class GuildBoardPanel extends Pyresir
   {
      public function GuildBoardPanel(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1,Vibemod.vutobami,Vibemod.meriz);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var [OFS3]_loc3_:* = [/OFS]false;
         var [OFS4]_loc4_:* = [/OFS]true;
         var [OFS16]_loc2_:Player = [/OFS][OFS8]gs_[/OFS].[OFS10]map[/OFS].[OFS12]player_[/OFS];
         if([OFS17]_loc2_[/OFS][OFS19]==[/OFS][OFS18]null[/OFS])
         {
            [OFS23]return[/OFS];
         }
         [OFS24]gs_[/OFS].[OFS44]addChild[/OFS][OFS44]([/OFS][OFS40]new [/OFS][OFS40]Vuladiwat[/OFS][OFS40]([/OFS][OFS29]_loc2_[/OFS].[OFS30]guildRank_[/OFS][OFS39]>=[/OFS][OFS33]GuildUtil[/OFS].[OFS36]legahuquk[/OFS][OFS40])[/OFS][OFS44])[/OFS];
         [OFS47]return[/OFS];
      }
   }

}