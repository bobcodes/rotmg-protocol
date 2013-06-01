package com.company.assembleegameclient.objects
{
[CLASS1293]   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import warude.CharacterChangerPanel;


   public class CharacterChanger extends GameObject implements Gofa
   {
      public function CharacterChanger(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         wywag=true;
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new CharacterChangerPanel(param1);
      }
   }
[/CLASS]
}