package com.company.assembleegameclient.objects
{
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import fytalis.GuildHallPortalPanel;


   public class GuildHallPortal extends GameObject implements Gim
   {
      public function GuildHallPortal(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         bura=true;
         return;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new GuildHallPortalPanel(param1,this);
      }
   }

}