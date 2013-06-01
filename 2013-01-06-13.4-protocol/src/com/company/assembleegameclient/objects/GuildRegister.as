package com.company.assembleegameclient.objects
{
[CLASS1292]   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import warude.GuildRegisterPanel;


   public class GuildRegister extends GameObject implements Gofa
   {
      public function GuildRegister(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new GuildRegisterPanel(param1);
      }
   }
[/CLASS]
}