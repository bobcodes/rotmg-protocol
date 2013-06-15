package com.company.assembleegameclient.objects
{
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import fytalis.GuildRegisterPanel;


   public class GuildRegister extends GameObject implements Gim
   {
      public function GuildRegister(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         bura=true;
         return;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new GuildRegisterPanel(param1);
      }
   }

}