package com.company.assembleegameclient.objects
{
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import vaqob.GuildChroniclePanel;


   public class GuildChronicle extends GameObject implements Putafyhil
   {
      public function GuildChronicle(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         tar=true;
         return;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new GuildChroniclePanel(param1);
      }
   }

}