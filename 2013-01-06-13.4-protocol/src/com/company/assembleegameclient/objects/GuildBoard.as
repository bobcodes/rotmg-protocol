package com.company.assembleegameclient.objects
{
[CLASS1282]   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import warude.GuildBoardPanel;


   public class GuildBoard extends GameObject implements Gofa
   {
      public function GuildBoard(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         wywag=true;
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new GuildBoardPanel(param1);
      }
   }
[/CLASS]
}