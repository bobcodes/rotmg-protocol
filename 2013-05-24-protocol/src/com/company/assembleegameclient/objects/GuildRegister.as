package com.company.assembleegameclient.objects
{
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import vaqob.GuildRegisterPanel;


   public class GuildRegister extends GameObject implements Putafyhil
   {
      public function GuildRegister(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         tar=true;
         return;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new GuildRegisterPanel(param1);
      }
   }

}