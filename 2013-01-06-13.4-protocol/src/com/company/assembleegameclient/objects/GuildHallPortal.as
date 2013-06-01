package com.company.assembleegameclient.objects
{
[CLASS1285]   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import warude.GuildHallPortalPanel;


   public class GuildHallPortal extends GameObject implements Gofa
   {
      public function GuildHallPortal(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new GuildHallPortalPanel(param1,this);
      }
   }
[/CLASS]
}