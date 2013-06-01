package com.company.assembleegameclient.objects
{
[CLASS1275]   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import warude.GuildChroniclePanel;


   public class GuildChronicle extends GameObject implements Gofa
   {
      public function GuildChronicle(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new GuildChroniclePanel(param1);
      }
   }
[/CLASS]
}