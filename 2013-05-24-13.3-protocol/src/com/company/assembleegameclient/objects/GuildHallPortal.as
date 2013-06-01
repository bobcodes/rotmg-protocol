package com.company.assembleegameclient.objects
{
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import vaqob.GuildHallPortalPanel;


   public class GuildHallPortal extends GameObject implements Putafyhil
   {
      public function GuildHallPortal(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         tar=true;
         return;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new GuildHallPortalPanel(param1,this);
      }
   }

}