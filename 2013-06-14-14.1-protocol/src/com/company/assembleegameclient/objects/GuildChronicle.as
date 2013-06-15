package com.company.assembleegameclient.objects
{
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import fytalis.GuildChroniclePanel;


   public class GuildChronicle extends GameObject implements Gim
   {
      public function GuildChronicle(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         bura=true;
         return;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new GuildChroniclePanel(param1);
      }
   }

}